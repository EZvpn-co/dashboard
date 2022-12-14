<?php

namespace App\Controllers\Admin;

use App\Controllers\AdminController;
use App\Models\{
    Ann,
    User
};
use App\Utils\{
    Telegram,
    DatatablesHelper
};
use App\Services\Mail;
use Ozdemir\Datatables\Datatables;
use Exception;

class AnnController extends AdminController
{
    public function index($request, $response, $args)
    {
        $table_config['total_column'] = array(
            'op' => '操作', 'id' => 'ID',
            'date' => '日期', 'content' => '内容'
        );
        $table_config['default_show_column'] = array(
            'op', 'id',
            'date', 'content'
        );
        $table_config['ajax_url'] = 'announcement/ajax';
        return $this->view()->assign('table_config', $table_config)->display('admin/announcement/index.tpl');
    }

    public function create($request, $response, $args)
    {
        return $this->view()->display('admin/announcement/create.tpl');
    }

    public function add($request, $response, $args)
    {
        $issend = $request->getParam('issend');
        $isaliyunapisend = $request->getParam('isaliyunapisend');
        $PushBear = $request->getParam('PushBear');
        $vip = $request->getParam('vip');
        $content = $request->getParam('content');
        $subject = $_ENV['appName'] . ' - announcement';

        if ($request->getParam('page') == 1) {
            $ann = new Ann();
            $ann->date = date('Y-m-d H:i:s');
            $ann->content = $content;
            $ann->markdown = $request->getParam('markdown');

            if (!$ann->save()) {
                $rs['ret'] = 0;
                $rs['msg'] = 'add failed';
                return $response->getBody()->write(json_encode($rs));
            }
        }
        if ($PushBear == 1) {
            $PushBear_sendkey = $_ENV['PushBear_sendkey'];
            $postdata = http_build_query(
                array(
                    'text' => $subject,
                    'desp' => $request->getParam('markdown'),
                    'sendkey' => $PushBear_sendkey
                )
            );
            file_get_contents('https://pushbear.ftqq.com/sub?' . $postdata, false);
        }
        if ($issend == 1) {
            $beginSend = ($request->getParam('page') - 1) * $_ENV['sendPageLimit'];
            $users = User::where('class', '>=', $vip)->skip($beginSend)->limit($_ENV['sendPageLimit'])->get();
            if ($isaliyunapisend == 1) {
                $tos = [];
                foreach ($users as $user) {
                    $to = $user->email;
                    if (!filter_var($to, FILTER_VALIDATE_EMAIL)) {
                        continue;
                    }
                    $tos[] = $to;
                }
                \App\Services\Mail\AliyunDM::send(implode(',', $tos), $subject, 'news/warn_batch.tpl', ['text' => $content]);
            } else {
                foreach ($users as $user) {
                    $user->sendMail(
                        $subject,
                        'news/warn.tpl',
                        [
                            'user' => $user,
                            'text' => $content
                        ],
                        [],
                        $_ENV['email_queue']
                    );
                }
            }
            if (count($users) == $_ENV['sendPageLimit']) {
                $rs['ret'] = 2;
                $rs['msg'] = $request->getParam('page') + 1;
                return $response->getBody()->write(json_encode($rs));
            }
        }

        Telegram::SendMarkdown('新公告：' . PHP_EOL . $request->getParam('markdown'));
        $rs['ret'] = 1;
        if ($issend == 1 && $PushBear == 1) {
            $rs['msg'] = 'Announcement added successfully, email sent and PushBear pushed successfully';
        }
        if ($issend == 1 && $PushBear != 1) {
            $rs['msg'] = 'Announcement added successfully, email sent successfully';
        }
        if ($issend != 1 && $PushBear == 1) {
            $rs['msg'] = 'Announcement added successfully, PushBear pushed successfully';
        }
        if ($issend != 1 && $PushBear != 1) {
            $rs['msg'] = 'Notice added successfully';
        }
        return $response->getBody()->write(json_encode($rs));
    }

    public function edit($request, $response, $args)
    {
        $id = $args['id'];
        $ann = Ann::find($id);
        return $this->view()->assign('ann', $ann)->display('admin/announcement/edit.tpl');
    }

    public function update($request, $response, $args)
    {
        $id = $args['id'];
        $ann = Ann::find($id);

        $ann->content = $request->getParam('content');
        $ann->markdown = $request->getParam('markdown');
        $ann->date = date('Y-m-d H:i:s');

        if (!$ann->save()) {
            $rs['ret'] = 0;
            $rs['msg'] = 'Failed to modify';
            return $response->getBody()->write(json_encode($rs));
        }

        Telegram::SendMarkdown('Announcement update:' . PHP_EOL . $request->getParam('markdown'));

        $rs['ret'] = 1;
        $rs['msg'] = 'Modified successfully';
        return $response->getBody()->write(json_encode($rs));
    }


    public function delete($request, $response, $args)
    {
        $id = $request->getParam('id');
        $ann = Ann::find($id);
        if (!$ann->delete()) {
            $rs['ret'] = 0;
            $rs['msg'] = 'Delete failed';
            return $response->getBody()->write(json_encode($rs));
        }
        $rs['ret'] = 1;
        $rs['msg'] = 'Deleted successfully';
        return $response->getBody()->write(json_encode($rs));
    }

    public function ajax($request, $response, $args)
    {
        $datatables = new Datatables(new DatatablesHelper());
        $datatables->query('Select id as op,id,date,content from announcement');

        $datatables->edit('op', static function ($data) {
            return '<a class="btn btn-brand" href="/admin/announcement/' . $data['id'] . '/edit">edit</a>
                    <a class="btn btn-brand-accent" id="delete" value="' . $data['id'] . '" href="javascript:void(0);" onClick="delete_modal_show(\'' . $data['id'] . '\')">删除</a>';
        });

        $datatables->edit('DT_RowId', static function ($data) {
            return 'row_1_' . $data['id'];
        });

        $body = $response->getBody();
        $body->write($datatables->generate());
    }
}

<?php

namespace App\Utils\Telegram\Commands;

use App\Utils\Telegram\TelegramTools;
use Telegram\Bot\Actions;
use Telegram\Bot\Commands\Command;

/**
 * Class PingCommand.
 */
class PingCommand extends Command
{
    /**
     * @var string Command Name
     */
    protected $name = 'ping';

    /**
     * @var string Command Description
     */
    protected $description = '[Group/Private chat] Get the unique ID of me or group.';

    /**
     * {@inheritdoc}
     */
    public function handle($arguments)
    {
        $Update = $this->getUpdate();
        $Message = $Update->getMessage();

        // 消息会话 ID
        $ChatID = $Message->getChat()->getId();

        if ($ChatID > 0) {
            // 私人会话

            // 发送 '输入中' 会话状态
            $this->replyWithChatAction(['action' => Actions::TYPING]);

            $text = [
                'Pong！',
                'Your ID is: ' . $ChatID . '.',
            ];

            // 回送信息
            $this->replyWithMessage(
                [
                    'text'       => implode(PHP_EOL, $text),
                    'parse_mode' => 'Markdown',
                ]
            );
        } else {
            // 群组

            if ($_ENV['enable_delete_user_cmd'] === true) {
                TelegramTools::DeleteMessage([
                    'chatid'      => $ChatID,
                    'messageid'   => $Message->getMessageId(),
                ]);
            }

            if ($_ENV['telegram_group_quiet'] === true) {
                // 群组中不回应
                return;
            }

            // 发送 '输入中' 会话状态
            $this->replyWithChatAction(['action' => Actions::TYPING]);

            $text = [
                'Pong！',
                'Your ID is: ' . $Message->getFrom()->getId() . '.',
                'The ID of this group is: ' . $ChatID . '.',
            ];

            // 回送信息
            $response = $this->replyWithMessage(
                [
                    'text' => implode(PHP_EOL, $text),
                ]
            );
            // 消息删除任务
            TelegramTools::DeleteMessage([
                'chatid'      => $ChatID,
                'messageid'   => $response->getMessageId(),
            ]);
        }
    }
}

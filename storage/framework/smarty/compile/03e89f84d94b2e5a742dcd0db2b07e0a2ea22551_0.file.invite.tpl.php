<?php
/* Smarty version 3.1.47, created on 2022-12-04 05:08:20
  from '/www/wwwroot/EZvpn/main-panel/resources/views/metron/user/settings/invite.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array(
    'version' => '3.1.47',
    'unifunc' => 'content_638bbac4dbde05_33460078',
    'has_nocache_code' => false,
    'file_dependency' =>
    array(
        '03e89f84d94b2e5a742dcd0db2b07e0a2ea22551' =>
        array(
            0 => '/www/wwwroot/EZvpn/main-panel/resources/views/metron/user/settings/invite.tpl',
            1 => 1670093384,
            2 => 'file',
        ),
    ),
    'includes' =>
    array(
        'file:include/global/head.tpl' => 1,
        'file:include/global/menu.tpl' => 1,
        'file:include/settings/menu.tpl' => 1,
        'file:include/global/footer.tpl' => 1,
        'file:include/global/scripts.tpl' => 1,
    ),
), false)) {
    function content_638bbac4dbde05_33460078(Smarty_Internal_Template $_smarty_tpl)
    {
?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Invitation to register &mdash; <?php echo $_smarty_tpl->tpl_vars['config']->value["appName"]; ?>
            </title>
            <?php $_smarty_tpl->_subTemplateRender('file:include/global/head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
            ?>
            <div class="d-flex flex-column flex-root">
                <div class="d-flex flex-row flex-column-fluid page">
                    <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
                        <?php $_smarty_tpl->_subTemplateRender('file:include/global/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
                        ?>
                        <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                            <div class="subheader min-h-lg-175px pt-5 pb-7 subheader-transparent" id="kt_subheader">
                                <div class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                                    <div class="d-flex align-items-center flex-wrap mr-2">
                                        <div class="d-flex flex-column">
                                            <h2 class="text-white font-weight-bold my-2 mr-5">Invitation to register</h2>
                                        </div>
                                    </div>
                                    <?php $_smarty_tpl->_subTemplateRender('file:include/settings/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
                                    ?>

                                    <div class="flex-row-fluid ml-lg-8">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-12 col-xl-5">
                                                <div class="card card-custom bgi-no-repeat gutter-b <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow']; ?>
" style="min-height: 250px; background-position: calc(100% + 0.5rem) calc(100% + 0.5rem); background-size: 100% auto; background-image: url(<?php echo $_smarty_tpl->tpl_vars['metron']->value['assets_url']; ?>
/media/svg/patterns/rhone-2.svg)">
                                                    <div class="card-body">
                                                        <div class="p-4">
                                                            <h3 class="<?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['global']['title']; ?>
 font-weight-bolder">The rebate balance</h3>
                                                            <p class="<?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['global']['title']; ?>
 display-3 display1-lg pb-2" style="padding-top: 10px; padding-bottom: 10px"><span class="display-4"><strong>??</strong> </span><strong><?php echo $_smarty_tpl->tpl_vars['user']->value->back_money; ?>
                                                                </strong></p>
                                                            <div class="pb-5">
                                                                <a href="Javascript:;" class="btn btn-danger font-weight-bold px-6 py-3" data-toggle="modal" data-target="#take_money_modal">withdrawal</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card card-custom bgi-no-repeat gutter-b <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow']; ?>
" style="min-height: 400px; background-position: right top; background-size: 30% auto; background-image: url(<?php echo $_smarty_tpl->tpl_vars['metron']->value['assets_url']; ?>
/media/svg/shapes/abstract-3.svg)">
                                                    <div class="card-header border-0 pt-5">
                                                        <div class="card-title font-weight-bolder">
                                                            <div class="card-label text-primary font-weight-bold font-size-h3">
                                                                <strong>&nbsp;&nbsp;Invite function</strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-1">
                                                        <ul class="dashboard-tabs nav nav-pills row nav-primary row-paddingless m-0 p-0" role="tablist">
                                                            <li class="nav-item d-flex col flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0 cursor_onclick">
                                                                <a class="nav-link border d-flex flex-grow-1 rounded flex-column align-items-center active" data-toggle="pill" href="#tab_invite_item">
                                                                    <span class="nav-text font-size-lg py-2 font-weight-bold text-center">details</span>
                                                                </a>
                                                            </li>
                                                            <li class="nav-item d-flex col flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0 cursor_onclick">
                                                                <a class="nav-link border d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_invite_setting">
                                                                    <span class="nav-text font-size-lg py-2 font-weight-bold text-center">Set up the</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="separator separator-dashed separator-border-4 p-5"></div>
                                                        <div class="tab-content m-0 p-0">
                                                            <div class="tab-pane active" id="tab_invite_item" role="tabpanel">
                                                                <div class="card-body pb-0 pl-0">
                                                                    <div class="h2"><strong>When you invite a friend register</strong></div>
                                                                    <?php if ($_smarty_tpl->tpl_vars['user']->value->rebate != 0) { ?>
                                                                        <div class="h5 pt-1">You will get the other party<code><?php if ($_smarty_tpl->tpl_vars['user']->value->c_rebate == 1 || $_smarty_tpl->tpl_vars['metron']->value['c_rebate'] == true) { ?>Every time<?php } else { ?>For the first time<?php } ?></code>Top-up amount <code><?php if ($_smarty_tpl->tpl_vars['user']->value->rebate > 0) {
                                                                                                                                                                                                                                                                                                                                                        echo $_smarty_tpl->tpl_vars['user']->value->rebate; ?>
                                                                                    %<?php } else {
                                                                                                                                                                                                                                                                                                                                                        echo $_smarty_tpl->tpl_vars['config']->value["code_payback"]; ?>
                                                                                    %<?php } ?></code> rebate</div>
                                                                    <?php } ?>
                                                                    <?php if ($_smarty_tpl->tpl_vars['config']->value['invite_gift'] > 0) { ?>
                                                                        <div class="h5 pt-1">You will be a one-off <code><?php echo $_smarty_tpl->tpl_vars['config']->value["invite_gift"]; ?>
                                                                                GB</code> Traffic reward</div>
                                                                    <?php } ?>
                                                                    <?php if ($_smarty_tpl->tpl_vars['config']->value['invite_get_money'] > 0) { ?>
                                                                        <div class="h5 pt-1">TAWill get <code><?php echo $_smarty_tpl->tpl_vars['config']->value["invite_get_money"]; ?>
                                                                            </code> $ reward as the initial capital</div>
                                                                    <?php } ?>
                                                                    <div class="h6 pt-3" style="font-size: 0.8em">The remaining &nbsp;<code><?php echo $_smarty_tpl->tpl_vars['user']->value->invite_num; ?>
                                                                        </code>&nbsp; Invited the number of times</div>
                                                                    <div class="pt-2">
                                                                        <button type="button" class="btn btn-primary btn-shadow btn-lg copy-text" data-clipboard-text="<?php echo $_smarty_tpl->tpl_vars['config']->value["baseUrl"]; ?>
/auth/register?code=<?php echo $_smarty_tpl->tpl_vars['code']->value->code; ?>
">Copy invitation link</button>
                                                                        <button type="button" class="btn btn-primary btn-shadow btn-lg copy-text" data-clipboard-text="<?php echo $_smarty_tpl->tpl_vars['code']->value->code; ?>
">Copy the invitation code</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="tab_invite_setting" role="tabpanel">
                                                                <div class="card-body pb-0">
                                                                    <div class="pb-5">
                                                                        <button class="btn btn-primary" data-toggle="modal" id="reset-link" onclick="setting.invite('reset');">Reset the invite code/link</button>
                                                                    </div>
                                                                    <?php if ($_smarty_tpl->tpl_vars['config']->value['invite_price'] >= 0 && $_smarty_tpl->tpl_vars['user']->value->invite_num >= 0) { ?>
                                                                        <div class="form-group" id="pay_code_form">
                                                                            <label>Purchase invitation number <?php echo $_smarty_tpl->tpl_vars['config']->value['invite_price']; ?>
                                                                                yutimen/time</label>
                                                                            <div class="input-group input-group-solid">
                                                                                <input type="number" class="form-control" placeholder="Number of input" id="buy-invite-num" />
                                                                                <div class="input-group-append">
                                                                                    <button class="btn btn-primary" type="button" onclick="setting.invite('buynum');">buy</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    <?php } ?>
                                                                    <?php if ($_smarty_tpl->tpl_vars['config']->value['custom_invite_price'] >= 0) { ?>
                                                                        <div class="form-group" id="pay_code_form">
                                                                            <label>Custom invite code <?php echo $_smarty_tpl->tpl_vars['config']->value['custom_invite_price']; ?>
                                                                                $/time</label>
                                                                            <div class="input-group input-group-solid">
                                                                                <input type="text" class="form-control" placeholder="Enter the invitation code" id="custom-invite-link" />
                                                                                <div class="input-group-append">
                                                                                    <button class="btn btn-primary" type="button" onclick="setting.invite('custom');">??????</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    <?php } ?>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-12 col-xl-7">
                                                <div class="card card-custom gutter-b card-stretch <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow']; ?>
">
                                                    <div class="card-header flex-wrap border-0 pt-6">
                                                        <div class="card-title">
                                                            <h3 class="card-label text-primary"><strong>Rebate record</strong>
                                                                <span class="d-block text-muted pt-2 font-size-sm">Invite users to bring you a rebate</span>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-0">
                                                        <div class="datatable datatable-bordered datatable-head-custom" id="ajax_invite_back_data"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <?php if ($_smarty_tpl->tpl_vars['metron']->value['invite_user'] === true) { ?>
                                            <?php if ($_smarty_tpl->tpl_vars['metron']->value['invite_user_for'] !== true || $_smarty_tpl->tpl_vars['metron']->value['invite_user_for'] === true && $_smarty_tpl->tpl_vars['user']->value->c_rebate === 1) { ?>
                                                <div class="card card-custom gutter-b <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow']; ?>
">
                                                    <div class="card-header flex-wrap border-0 pt-6">
                                                        <div class="card-title">
                                                            <h3 class="card-label text-primary"><strong>Invite users to record</strong>
                                                                <span class="d-block text-muted pt-2 font-size-sm">You invite all the user list</span>
                                                            </h3>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-0">
                                                        <div class="mb-7">
                                                            <div class="row align-items-center">
                                                                <div class="col-lg-9 col-xl-8">
                                                                    <div class="row align-items-center">
                                                                        <div class="col-md-4 my-2 my-md-0">
                                                                            <div class="d-flex align-items-center">
                                                                                <label class="mr-3 mb-0 d-none d-md-block">state:</label>
                                                                                <select class="form-control" id="invite_user_status">
                                                                                    <option value="">all</option>
                                                                                    <option value="1">A prepaid phone users</option>
                                                                                    <option value="0">No prepaid phone users</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="datatable datatable-bordered datatable-head-custom" id="ajax_invite_user_data"></div>
                                                    </div>
                                                </div>
                                            <?php } ?>
                                        <?php } ?>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <?php $_smarty_tpl->_subTemplateRender('file:include/global/footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
                    ?>
                </div>
            </div>
            </div>

            <div class="modal fade" id="take_money_modal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title <?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['modal']['text_title']; ?>
"><strong>Withdrawal application</strong></h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="col-form-label text-lg-right text-left">Input amount:</label>
                                <div class="input-group input-group-solid">
                                    <input type="number" class="form-control" placeholder="The amount of input to extract" name="take_money" />
                                </div>
                            </div>
                            <label class="col-form-label text-lg-right text-left">Extraction method:</label>
                            <ul class="dashboard-tabs nav nav-pills row nav-primary row-paddingless m-0 p-0" role="tablist">
                                <li class="nav-item d-flex col flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0 cursor_onclick">
                                    <a class="nav-link border py-5 d-flex flex-grow-1 rounded flex-column align-items-center active" data-toggle="pill" data-metron="1">
                                        <span class="nav-icon py-2 w-auto">
                                            <i class="fab fas fa-wallet icon-2x"></i>
                                        </span>
                                        <span class="nav-text font-size-lg py-2 font-weight-bold text-center">Go to the balance<br />
                                            <small>0 $ The lift</small></span>
                                    </a>
                                </li>
                                <?php if ($_smarty_tpl->tpl_vars['metron']->value['take_cash_enable'] === true) { ?>
                                    <li class="nav-item d-flex col flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0 cursor_onclick">
                                        <a class="nav-link border py-5 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" data-metron="2">
                                            <span class="nav-icon py-2 w-auto">
                                                <i class="fab fas fa-people-arrows icon-2x"></i>
                                            </span>
                                            <span class="nav-text font-size-lg py-2 font-weight-bold text-center">To apply for cash withdrawals<br />
                                                <small><?php echo $_smarty_tpl->tpl_vars['metron']->value['take_back_total']; ?>
                                                    $ The lift</small></span>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <?php if ($_smarty_tpl->tpl_vars['metron']->value['take_cash_enable'] === true) { ?>
                                <a href="Javascript:;" class="btn btn-danger" data-toggle="modal" data-target="#agent_setting_modal">Withdrawal account Settings</a>
                            <?php } ?>
                            <button type="button" class="btn btn-primary" type="button" onclick="setting.take_total();">confirm</button>
                            <button type="button" class="btn <?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['modal']['btn_close']; ?>
 font-weight-bold" data-dismiss="modal">cancel</button>
                        </div>
                    </div>
                </div>
            </div>

            <?php if ($_smarty_tpl->tpl_vars['metron']->value['take_cash_enable'] === true) { ?>
                <div class="modal fade" id="agent_setting_modal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title <?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['modal']['text_title']; ?>
"><strong>Withdrawal is set</strong></h4>
                            </div>
                            <div class="modal-body">
                                <p class="text-danger">Be sure to check whether the account is correct, As a result of incorrect account no to account, This site is not responsible for! </p>
                                <div class="form-group">
                                    <label class="col-form-label text-lg-right text-left">Account type:</label>
                                    <select class="form-control" id="take_account_type" data-style="btn-primary">
                                        <?php
                                        $_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['metron']->value['take_account_type'], 'acctype');
                                        $_smarty_tpl->tpl_vars['acctype']->do_else = true;
                                        if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['acctype']->value) {
                                            $_smarty_tpl->tpl_vars['acctype']->do_else = false;
                                        ?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['acctype']->value; ?>
" <?php if ((isset($_smarty_tpl->tpl_vars['user']->value->config['take_account'])) && $_smarty_tpl->tpl_vars['acctype']->value == $_smarty_tpl->tpl_vars['user']->value->config['take_account']['type']) { ?>selected="selected" <?php } ?>><?php echo $_smarty_tpl->tpl_vars['acctype']->value; ?>
                                            </option>
                                        <?php
                                        }
                                        $_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1); ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="col-form-label text-lg-right text-left">Withdrawal account:</label>
                                    <div class="input-group input-group-solid">
                                        <?php if ((isset($_smarty_tpl->tpl_vars['user']->value->config['take_account'])) && $_smarty_tpl->tpl_vars['user']->value->config['take_account']['acc']) { ?>
                                            <input type="text" class="form-control" placeholder="Enter the withdrawal account" value="<?php echo $_smarty_tpl->tpl_vars['user']->value->config['take_account']['acc']; ?>
" name="take_account_value" />
                                        <?php } else { ?>
                                            <input type="text" class="form-control" placeholder="Enter the withdrawal account" value="" name="take_account_value" />
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary buyTrafficPackage" type="button" onclick="setting.take_account_setting();">confirm</button>
                                <button type="button" class="btn <?php echo $_smarty_tpl->tpl_vars['style']->value[$_smarty_tpl->tpl_vars['theme_style']->value]['modal']['btn_close']; ?>
 font-weight-bold" data-dismiss="modal">cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>

            <?php $_smarty_tpl->_subTemplateRender('file:include/global/scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
            ?>
            </body>

        </html>
<?php }
}

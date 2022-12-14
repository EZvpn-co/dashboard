<?php
/* Smarty version 3.1.47, created on 2022-12-01 04:54:15
  from '/www/wwwroot/EZvpn/main-panel/resources/views/material/user/main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.47',
  'unifunc' => 'content_6387c2f72feeb0_25988022',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bd63066af7a2fcf2930a2177b2dd90170dedf047' => 
    array (
      0 => '/www/wwwroot/EZvpn/main-panel/resources/views/material/user/main.tpl',
      1 => 1665876375,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:mylivechat.tpl' => 1,
  ),
),false)) {
function content_6387c2f72feeb0_25988022 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#4285f4">
    <title><?php echo $_smarty_tpl->tpl_vars['config']->value['appName'];?>
</title>

    <!-- css -->
    <link href="/theme/material/css/base.min.css" rel="stylesheet">
    <link href="/theme/material/css/project.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/theme/material/css/user.css">
    <!-- jquery -->
    <?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/npm/jquery@3.2.1"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs@gh-pages/qrcode.min.js"><?php echo '</script'; ?>
>
    <!-- js -->
    <?php echo '<script'; ?>
 src="/assets/js/fuck.js"><?php echo '</script'; ?>
>
</head>
<body class="page-orange">
<header class="header header-orange header-transparent header-waterfall ui-header">
    <ul class="nav nav-list pull-left">
        <div>
            <a data-toggle="menu" href="#ui_menu">
                <span class="icon icon-lg text-white">menu</span>
            </a>
        </div>
    </ul>

    <ul class="nav nav-list pull-right">
        <div class="dropdown margin-right">
            <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                <?php if ($_smarty_tpl->tpl_vars['user']->value->isLogin) {?>
                <span class="access-hide"><?php echo $_smarty_tpl->tpl_vars['user']->value->user_name;?>
</span>
                <span class="avatar avatar-sm"><img src="<?php echo $_smarty_tpl->tpl_vars['user']->value->gravatar;?>
"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>????????????</a>
                </li>

                <li>
                    <a class="padding-right-cd waves-attach" href="/user/logout"><span
                                class="icon icon-lg margin-right">exit_to_app</span>??????</a>
                </li>
                <li>
                    <a href="//en.gravatar.com/" target="view_window"><i class="icon icon-lg margin-right">insert_photo</i>????????????</a>
                </li>
            </ul>
            <?php } else { ?>
            <span class="access-hide">?????????</span>
            <span class="icon icon-lg margin-right">account_circle</span>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="padding-right-lg waves-attach" href="/auth/login"><span class="icon icon-lg margin-right">account_box</span>??????</a>
                </li>
                <li>
                    <a class="padding-right-lg waves-attach" href="/auth/register"><span
                                class="icon icon-lg margin-right">pregnant_woman</span>??????</a>
                </li>
            </ul>
            <?php }?>
        </div>
    </ul>
</header>
<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
    <div class="menu-scroll">
        <div class="menu-content">
            <a class="menu-logo" href="/"><i class="icon icon-lg">language</i>&nbsp;<?php echo $_smarty_tpl->tpl_vars['config']->value['appName'];?>
</a>
            <ul class="nav">
                <li>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_me">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_me">
                        <li>
                            <a href="/user"><i class="icon icon-lg">account_balance_wallet</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/profile"><i class="icon icon-lg">account_box</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/edit"><i class="icon icon-lg">sync_problem</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/trafficlog"><i class="icon icon-lg">hourglass_empty</i>&nbsp;????????????</a>
                        </li>

                    <?php if ($_smarty_tpl->tpl_vars['config']->value['subscribeLog'] === true && $_smarty_tpl->tpl_vars['config']->value['subscribeLog_show'] === true) {?>
                        <li>
                            <a href="/user/subscribe_log"><i class="icon icon-lg">important_devices</i>&nbsp;????????????</a>
                        </li>
                    <?php }?>

                        <?php if ($_smarty_tpl->tpl_vars['config']->value['enable_ticket'] === true) {?>
                            <li>
                                <a href="/user/ticket"><i class="icon icon-lg">question_answer</i>&nbsp;????????????</a>
                            </li>
                        <?php }?>

                        <li>
                            <a href="/user/invite"><i class="icon icon-lg">loyalty</i>&nbsp;????????????</a>
                        </li>
                    </ul>


                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_use">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_use">
                        <li>
                            <a href="/user/node"><i class="icon icon-lg">airplanemode_active</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/relay"><i class="icon icon-lg">compare_arrows</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/lookingglass"><i class="icon icon-lg">visibility</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="/user/announcement"><i class="icon icon-lg">announcement</i>&nbsp;????????????</a>
                        </li>

                        <li>
                            <a href="<?php if ($_smarty_tpl->tpl_vars['config']->value['use_this_doc'] === false) {?>/user/tutorial<?php } else { ?>/doc/<?php }?>"><i class="icon icon-lg">start</i>&nbsp;????????????</a>
                        </li>
                    </ul>

                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_detect">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_detect">
                        <li><a href="/user/detect"><i class="icon icon-lg">account_balance</i>&nbsp;????????????</a></li>
                        <li><a href="/user/detect/log"><i class="icon icon-lg">assignment_late</i>&nbsp;????????????</a></li>
                    </ul>

                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_help">??????</a>
                    <ul class="menu-collapse collapse in" id="ui_menu_help">
                        <li>
                            <a href="/user/code"><i class="icon icon-lg">code</i>&nbsp;??????</a>
                        </li>

                        <li>
                            <a href="/user/shop"><i class="icon icon-lg">shop</i>&nbsp;????????????</a>
                        </li>

                        <li><a href="/user/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;????????????</a></li>

                        <?php if ($_smarty_tpl->tpl_vars['config']->value['enable_donate'] === true) {?>
                            <li>
                                <a href="/user/donate"><i class="icon icon-lg">attach_money</i>&nbsp;????????????</a>
                            </li>
                        <?php }?>

                    </ul>

                    <?php if ($_smarty_tpl->tpl_vars['user']->value->isAdmin()) {?>
                <li>
                    <a href="/admin"><i class="icon icon-lg">person_pin</i>&nbsp;????????????</a>
                </li>
                <?php }?>

                <?php if ($_smarty_tpl->tpl_vars['can_backtoadmin']->value) {?>
                    <li>
                        <a class="padding-right-cd waves-attach" href="/user/backtoadmin"><span
                                    class="icon icon-lg margin-right">backtoadmin</span>?????????????????????</a>
                    </li>
                <?php }?>
            </ul>
        </div>
    </div>
</nav>

<?php if ($_smarty_tpl->tpl_vars['config']->value['enable_mylivechat'] === true) {
$_smarty_tpl->_subTemplateRender('file:mylivechat.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
}

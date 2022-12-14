<?php
/* Smarty version 3.1.47, created on 2022-12-04 05:05:31
  from '/www/wwwroot/EZvpn/main-panel/resources/views/metron/user/settings/logs.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.47',
  'unifunc' => 'content_638bba1bddc292_57481619',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9a3b5a2f523092cb369a2c08fe229be5c5cae307' => 
    array (
      0 => '/www/wwwroot/EZvpn/main-panel/resources/views/metron/user/settings/logs.tpl',
      1 => 1670092670,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:include/global/head.tpl' => 1,
    'file:include/global/menu.tpl' => 1,
    'file:include/settings/menu.tpl' => 1,
    'file:include/global/footer.tpl' => 1,
    'file:include/global/scripts.tpl' => 1,
  ),
),false)) {
function content_638bba1bddc292_57481619 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
    <head>
        <title>Record to view &mdash; <?php echo $_smarty_tpl->tpl_vars['config']->value["appName"];?>
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
                                        <h2 class="text-white font-weight-bold my-2 mr-5">Record to view</h2>
                                    </div>
                                </div>
                                <?php $_smarty_tpl->_subTemplateRender('file:include/settings/menu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

                                    <div class="flex-row-fluid ml-lg-8">
                                        
                                        <div class="row">
                                            <div class="col-lg-6">
                                                
                                                <div class="card card-custom gutter-b card-stretch <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow'];?>
">
                                                    <div class="card-header flex-wrap border-0 pt-6">
                                                        <div class="card-title">
                                                            <h3 class="card-label text-primary"><strong>Login record</strong>
                                                            <span class="d-block text-muted pt-2 font-size-sm">Record the account login web siteIP</span></h3>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-0">
                                                        <div class="datatable datatable-bordered datatable-head-custom" id="ajax_login_log_data"></div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <div class="col-lg-6">
                                                
                                                <div class="card card-custom gutter-b card-stretch <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow'];?>
">
                                                    <div class="card-header flex-wrap border-0 pt-6">
                                                        <div class="card-title">
                                                            <h3 class="card-label text-primary"><strong>Using the record</strong>
                                                            <span class="d-block text-muted pt-2 font-size-sm">Record the client use the nodeIP</span></h3>
                                                        </div>
                                                    </div>
                                                    <div class="card-body pt-0">
                                                        <div class="datatable datatable-bordered datatable-head-custom" id="ajax_use_log_data"></div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="card card-custom gutter-b <?php echo $_smarty_tpl->tpl_vars['metron']->value['style_shadow'];?>
">
                                            <div class="card-header flex-wrap border-0 pt-6">
                                                <div class="card-title">
                                                    <h3 class="card-label text-primary"><strong>Subscribe to the record</strong>
                                                    <span class="d-block text-muted pt-2 font-size-sm">Record each node was obtained from the subscription link under account</span></h3>
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
                                                                        <select class="form-control" id="subscribe_log_type">
                                                                            <option value="">all</option>
                                                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['metron']->value['index_sub'], 'subtype');
$_smarty_tpl->tpl_vars['subtype']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['subtype']->value) {
$_smarty_tpl->tpl_vars['subtype']->do_else = false;
?>
                                                                            <option value="<?php echo $_smarty_tpl->tpl_vars['subtype']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['subtype']->value;?>
</option>
                                                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="datatable datatable-bordered datatable-head-custom" id="ajax_subscribe_log_data"></div>
                                            </div>
                                        </div>
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
        <?php $_smarty_tpl->_subTemplateRender('file:include/global/scripts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    </body>
</html><?php }
}

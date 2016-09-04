<?php /* Smarty version Smarty-3.1.17, created on 2016-09-02 06:09:01
         compiled from "application\views\web\base-layout\document-list.html" */ ?>
<?php /*%%SmartyHeaderCode:1929857888f9d947971-65923897%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a5bea272e85ebd21dfda7faf064bfe9fb7be6cac' => 
    array (
      0 => 'application\\views\\web\\base-layout\\document-list.html',
      1 => 1472788283,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1929857888f9d947971-65923897',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888f9d9b4f95_17395841',
  'variables' => 
  array (
    'title' => 1,
    'BASEURL' => 0,
    'THEMESPATH' => 0,
    'LOADSTYLE' => 0,
    'LOADJS' => 0,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888f9d9b4f95_17395841')) {function content_57888f9d9b4f95_17395841($_smarty_tpl) {?><!DOCTYPE html><html>  <head>    <meta charset="utf-8">    <title><?php echo '/*%%SmartyNocache:1929857888f9d947971-65923897%%*/<?php echo $_smarty_tpl->tpl_vars[\'title\']->value;?>
/*/%%SmartyNocache:1929857888f9d947971-65923897%%*/';?>
    </title>    <link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/favicon.ico">    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />    <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>
  </head>  <body>    <div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;">    </div>     <!--removed by integration-->    <?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
    <div class="j-menu-container">    </div>    <?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/header_detail.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
    <div class="l-inner-page-container">            <?php echo '/*%%SmartyNocache:1929857888f9d947971-65923897%%*/<?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/breadcrumbs.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:1929857888f9d947971-65923897%%*/';?>
      <div class="container">        <?php echo '/*%%SmartyNocache:1929857888f9d947971-65923897%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:1929857888f9d947971-65923897%%*/';?>
      </div>          </div>    <?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>
    <!-- javascript loaded -->    <?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>
    <!-- end of loaded javascript -->  </body></html><?php }} ?>

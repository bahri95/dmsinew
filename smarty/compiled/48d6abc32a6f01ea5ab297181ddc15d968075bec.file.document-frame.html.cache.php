<?php /* Smarty version Smarty-3.1.17, created on 2016-09-02 05:53:50
         compiled from "application\views\web\base-layout\document-frame.html" */ ?>
<?php /*%%SmartyHeaderCode:2849757888d76aff023-74241161%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '48d6abc32a6f01ea5ab297181ddc15d968075bec' => 
    array (
      0 => 'application\\views\\web\\base-layout\\document-frame.html',
      1 => 1472788283,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2849757888d76aff023-74241161',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578da5657d4395_62523726',
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
<?php if ($_valid && !is_callable('content_578da5657d4395_62523726')) {function content_578da5657d4395_62523726($_smarty_tpl) {?><!DOCTYPE html><html>  <head>    <meta charset="utf-8">    <title><?php echo '/*%%SmartyNocache:2849757888d76aff023-74241161%%*/<?php echo $_smarty_tpl->tpl_vars[\'title\']->value;?>
/*/%%SmartyNocache:2849757888d76aff023-74241161%%*/';?>
    </title>    <link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/favicon.ico">    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />    <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>
  </head>  <body style="background-color:#20B2AA; padding-top:50px;">    <!--removed by integration-->        <?php echo '/*%%SmartyNocache:2849757888d76aff023-74241161%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:2849757888d76aff023-74241161%%*/';?>
        <!-- javascript loaded -->    <?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>
    <!-- end of loaded javascript -->  </body></html><?php }} ?>

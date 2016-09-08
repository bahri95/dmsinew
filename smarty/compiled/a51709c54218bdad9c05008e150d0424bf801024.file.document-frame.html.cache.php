<?php /* Smarty version Smarty-3.1.17, created on 2016-09-05 21:01:57
         compiled from "application/views/web/base-layout/document-frame.html" */ ?>
<?php /*%%SmartyHeaderCode:94282263157720d718b9287-44229838%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a51709c54218bdad9c05008e150d0424bf801024' => 
    array (
      0 => 'application/views/web/base-layout/document-frame.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '94282263157720d718b9287-44229838',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720d71964480_51683928',
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
<?php if ($_valid && !is_callable('content_57720d71964480_51683928')) {function content_57720d71964480_51683928($_smarty_tpl) {?><!DOCTYPE html><html>  <head>    <meta charset="utf-8">    <title><?php echo '/*%%SmartyNocache:94282263157720d718b9287-44229838%%*/<?php echo $_smarty_tpl->tpl_vars[\'title\']->value;?>
/*/%%SmartyNocache:94282263157720d718b9287-44229838%%*/';?>
    </title>    <link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/favicon.ico">    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />    <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>
  </head>  <body style="background-color:#20B2AA; padding-top:50px;">    <!--removed by integration-->        <?php echo '/*%%SmartyNocache:94282263157720d718b9287-44229838%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:94282263157720d718b9287-44229838%%*/';?>
        <!-- javascript loaded -->    <?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>
    <!-- end of loaded javascript -->  </body></html><?php }} ?>

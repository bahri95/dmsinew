<?php /* Smarty version Smarty-3.1.17, created on 2016-08-18 04:16:25
         compiled from "application/views/web/base-layout/document-full.html" */ ?>
<?php /*%%SmartyHeaderCode:187540835457720dc0e4a077-50833064%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f93fe3e88bae4ca0fe698b364cf68dcbd3bf5b55' => 
    array (
      0 => 'application/views/web/base-layout/document-full.html',
      1 => 1471344816,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '187540835457720dc0e4a077-50833064',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720dc0efbd31_59792590',
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
<?php if ($_valid && !is_callable('content_57720dc0efbd31_59792590')) {function content_57720dc0efbd31_59792590($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><?php echo '/*%%SmartyNocache:187540835457720dc0e4a077-50833064%%*/<?php echo $_smarty_tpl->tpl_vars[\'title\']->value;?>
/*/%%SmartyNocache:187540835457720dc0e4a077-50833064%%*/';?>
</title>
  <link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />
        <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>

</head>
<body>
  <div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;"></div> <!--removed by integration-->
 
<?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

<div class="j-menu-container"></div>

 	<div class="l-main-container">
      
      <?php echo '/*%%SmartyNocache:187540835457720dc0e4a077-50833064%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:187540835457720dc0e4a077-50833064%%*/';?>

      

	</div>
<?php echo $_smarty_tpl->getSubTemplate ("web/base-layout/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

 <!-- javascript loaded -->
<?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>

<!-- end of loaded javascript -->

</body>
</html><?php }} ?>

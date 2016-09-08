<?php /* Smarty version Smarty-3.1.17, created on 2016-07-18 06:03:25
         compiled from "application\views\webanggota\base-layout\document-home.html" */ ?>
<?php /*%%SmartyHeaderCode:1549857889c3dcb6001-58302045%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f47802c74bf84b89345d0eca6922cfb5b4013419' => 
    array (
      0 => 'application\\views\\webanggota\\base-layout\\document-home.html',
      1 => 1468574648,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1549857889c3dcb6001-58302045',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57889c3dd2f1a7_39241531',
  'variables' => 
  array (
    'page_title' => 0,
    'site_title' => 0,
    'THEMESPATH' => 0,
    'LOADSTYLE' => 0,
    'LOADJS' => 0,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57889c3dd2f1a7_39241531')) {function content_57889c3dd2f1a7_39241531($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
<?php echo $_smarty_tpl->tpl_vars['site_title']->value;?>
</title>
  <link rel="shortcut icon" href="favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />
        <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>

</head>
<body>
  <div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;"></div> <!--removed by integration-->
<?php echo $_smarty_tpl->getSubTemplate ("webanggota/base-layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>


<div class="j-menu-container"></div>

 	<div class="l-main-container">
      <?php echo $_smarty_tpl->getSubTemplate ("webanggota/base-layout/slider.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

       <?php echo '/*%%SmartyNocache:1549857889c3dcb6001-58302045%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:1549857889c3dcb6001-58302045%%*/';?>
 

	</div>
<?php echo $_smarty_tpl->getSubTemplate ("webanggota/base-layout/footer.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

 <!-- javascript loaded -->
<?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>

<!-- end of loaded javascript -->

</body>
</html><?php }} ?>

<?php /* Smarty version Smarty-3.1.17, created on 2016-09-06 01:17:35
         compiled from "application/views/private/sosmed/edit.html" */ ?>
<?php /*%%SmartyHeaderCode:127477534157ce516f008ff5-20523980%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1357beeb89f6438e612e8c00733190549a5b3a60' => 
    array (
      0 => 'application/views/private/sosmed/edit.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '127477534157ce516f008ff5-20523980',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'url_private' => 0,
    'url_list' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_process' => 0,
    'data' => 0,
    'logo' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57ce516f0cf183_21764042',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57ce516f0cf183_21764042')) {function content_57ce516f0cf183_21764042($_smarty_tpl) {?><section class="content-header">
">
">
.
.
" method="post" enctype="multipart/form-data">
" size="100" maxlength="255" />
" size="100" maxlength="255" />
 $_from = $_smarty_tpl->tpl_vars['logo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
" <?php if ($_smarty_tpl->tpl_vars['data']->value['id_logo']==$_smarty_tpl->tpl_vars['result']->value['id_logo']) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result']->value['logo'];?>

" size="100" maxlength="255" />
" size="100" min="1" maxlength="20" width="50" />
"  class="btn btn-primary">
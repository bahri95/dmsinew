<?php /*%%SmartyHeaderCode:1343157888d7d407514-59546593%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '985f90fb749eb9e3b279a3440dc676881793741a' => 
    array (
      0 => 'application\\views\\private\\base-layout\\document.html',
      1 => 1471944720,
      2 => 'file',
    ),
    '127ed3120242d2eaac5b05ea9e656776b209f371' => 
    array (
      0 => 'application\\views\\private\\base-layout\\sidebar.html',
      1 => 1471937227,
      2 => 'file',
    ),
    'ad05673a1b29a6e9cedb25b211aaa97a8184d234' => 
    array (
      0 => 'application\\views\\private\\aspirasi\\list_verifikasi.html',
      1 => 1471594272,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1343157888d7d407514-59546593',
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57bd2949586220_23530204',
  'variables' => 
  array (
    'site_description' => 0,
    'site_keyword' => 0,
    'site_title' => 0,
    'THEMESPATH' => 0,
    'LOADSTYLE' => 1,
    'data_aspirasi' => 1,
    'jumlah_aspirasi' => 1,
    'result' => 1,
    'url_aspirasi_list' => 0,
    'rs' => 1,
    'data_anggota_baru' => 1,
    'jumlah_anggota_baru' => 1,
    'url_anggota_list' => 1,
    'user_account' => 1,
    'url_logout_admin_process' => 1,
    'LOADJS' => 1,
    'LOADJSCRUD' => 1,
  ),
  'has_nocache_code' => true,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57bd2949586220_23530204')) {function content_57bd2949586220_23530204($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>

 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>

 $_from = $_smarty_tpl->tpl_vars['data_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
">

</small>
</p>
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>

 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>

 $_from = $_smarty_tpl->tpl_vars['data_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
">

</p>
<i class="caret"></i></span>
" class="img-circle" alt="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['admin_name'];?>
" />
<br /><small><?php echo $_smarty_tpl->tpl_vars['user_account']->value['jabatan'];?>
</small>
</small>-->
">Akun</a>
">Profil</a>
">Photo</a>
" class="btn btn-default btn-flat">Profil Museum</a>
" class="btn btn-default btn-flat">Log Out</a>




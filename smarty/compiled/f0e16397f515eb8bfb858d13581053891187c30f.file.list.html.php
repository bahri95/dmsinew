<?php /* Smarty version Smarty-3.1.17, created on 2016-08-23 09:47:23
         compiled from "application\views\private\asosiasi\list.html" */ ?>
<?php /*%%SmartyHeaderCode:13765578c5477b702d9-65296717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f0e16397f515eb8bfb858d13581053891187c30f' => 
    array (
      0 => 'application\\views\\private\\asosiasi\\list.html',
      1 => 1471937791,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13765578c5477b702d9-65296717',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578c5477c7db97_27801881',
  'variables' => 
  array (
    'url_private' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_search' => 0,
    'search_status' => 0,
    'propinsi' => 0,
    'result_propinsi' => 0,
    'propinsi_selected' => 0,
    'url_add' => 0,
    'asosiasi' => 0,
    'no' => 0,
    'result' => 0,
    'url_edit' => 0,
    'url_delete' => 0,
    'url_anggota' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578c5477c7db97_27801881')) {function content_578c5477c7db97_27801881($_smarty_tpl) {?>
"><i class="fa fa-home"></i> Home</a></li>
.
.
" >
"  />
 $_from = $_smarty_tpl->tpl_vars['propinsi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_propinsi']->key => $_smarty_tpl->tpl_vars['result_propinsi']->value) {
$_smarty_tpl->tpl_vars['result_propinsi']->_loop = true;
?>
" <?php if ($_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi']==$_smarty_tpl->tpl_vars['propinsi_selected']->value) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['nama_propinsi'];?>
</option>
" title="Tambah Data" class="btn bg-olive btn-flat"><i class='fa fa-plus'></i> Tambah Data</a></div>
 $_from = $_smarty_tpl->tpl_vars['asosiasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
.</td>
</td>
</td>
</td>
</td>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_asosiasi'];?>
" title="Edit" class="btn btn-success btn-flat"><i class='fa fa-pencil'></i></a>&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['url_delete']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_asosiasi'];?>
" title="Hapus" class="btn btn-danger btn-flat" id="btndel<?php echo $_smarty_tpl->tpl_vars['result']->value['no_regmus'];?>
" onclick="return konfirmasi_delete();"><i class='fa fa-trash'></i></a>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_asosiasi'];?>
" class="btn btn-success btn-flat"> <i class="glyphicon glyphicon-user" title="Lihat Anggota"></i></a>

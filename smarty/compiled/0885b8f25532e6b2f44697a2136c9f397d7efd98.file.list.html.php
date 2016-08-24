<?php /* Smarty version Smarty-3.1.17, created on 2016-08-17 21:00:08
         compiled from "application/views/web/download/list.html" */ ?>
<?php /*%%SmartyHeaderCode:18513463685772160d11c3a7-78850143%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0885b8f25532e6b2f44697a2136c9f397d7efd98' => 
    array (
      0 => 'application/views/web/download/list.html',
      1 => 1471344818,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18513463685772160d11c3a7-78850143',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5772160d197146_87296474',
  'variables' => 
  array (
    'page_modul' => 0,
    'download_list' => 0,
    'no' => 0,
    'rs' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5772160d197146_87296474')) {function content_5772160d197146_87296474($_smarty_tpl) {?>
<div class="col-md-9">
  <div class="b-shortcode-example">
    <!--start detail desc-->
    <div class="b-article-box">
      <div class="f-article_title f-primary-l b-title-b-hr"> <?php echo mb_strtoupper($_smarty_tpl->tpl_vars['page_modul']->value, 'UTF-8');?>
 </div>
      <table class="b-table-primary f-table-primary f-center">
        <tr>
          <th width="5%">No</th>
          <th width="65%">Nama File</th>
          <th width="15%">Ukuran</th>
          <th width="15%">Download</th>
        </tr>
        <?php if ($_smarty_tpl->tpl_vars['download_list']->value!='') {?>
        <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['download_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
        <tr>
          <td><?php echo $_smarty_tpl->tpl_vars['no']->value++;?>
</td>
          <td align="left"><a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['file_download'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
</a></td>
          <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['ukuran'];?>
</td>
          <td><a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['file_download'];?>
" class="button-xs button-yellow"><i class="fa fa-download"></i></a></td>
        </tr>
        <?php } ?>
        <?php }?>
      </table>
    </div>
    <?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?>
    <div class="b-pagination f-pagination">
      <ul>
        <?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>

      </ul>
    </div>
    <?php }?> </div>
  <!--end detail -->
</div>
<!--end col 9-->
<?php }} ?>

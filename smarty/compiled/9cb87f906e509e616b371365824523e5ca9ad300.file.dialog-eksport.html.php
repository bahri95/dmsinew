<?php /* Smarty version Smarty-3.1.17, created on 2016-08-26 01:07:17
         compiled from "application\views\private\asosiasi\dialog-eksport.html" */ ?>
<?php /*%%SmartyHeaderCode:1804357b6d133397369-53877631%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9cb87f906e509e616b371365824523e5ca9ad300' => 
    array (
      0 => 'application\\views\\private\\asosiasi\\dialog-eksport.html',
      1 => 1472135739,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1804357b6d133397369-53877631',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57b6d1333c9ff6_68801949',
  'variables' => 
  array (
    'url_process_export_pdf' => 1,
    'start_list' => 1,
    'end_list' => 1,
    'total_list' => 1,
    'propinsi' => 1,
    'result_propinsi' => 1,
    'propinsi_selected' => 1,
    'awal_cetak' => 1,
    'data' => 1,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57b6d1333c9ff6_68801949')) {function content_57b6d1333c9ff6_68801949($_smarty_tpl) {?>
<div id="modal-export-pdf-content" style="display:none;">
  <form role="form" name="form-export" id="form-export" method="post" action="<?php echo $_smarty_tpl->tpl_vars['url_process_export_pdf']->value;?>
" >
    <input type="hidden" name="start_list" value="<?php echo $_smarty_tpl->tpl_vars['start_list']->value;?>
" />
    <input type="hidden" name="end_list" value="<?php echo $_smarty_tpl->tpl_vars['end_list']->value;?>
" />
    <input type="hidden" name="total_list" value="<?php echo $_smarty_tpl->tpl_vars['total_list']->value;?>
" />
    <div class="form-group">
      <label for="user_name_lama">Provinsi * </label>
      <div class="input-group">
        <select name="id_propinsi" class="form-control" >


                                            <option value="">-Pilih Provinsi-</option>


                                            <?php  $_smarty_tpl->tpl_vars['result_propinsi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result_propinsi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['propinsi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_propinsi']->key => $_smarty_tpl->tpl_vars['result_propinsi']->value) {
$_smarty_tpl->tpl_vars['result_propinsi']->_loop = true;
?>


                                            <option value="<?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi'];?>
" <?php if ($_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi']==$_smarty_tpl->tpl_vars['propinsi_selected']->value) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['nama_propinsi'];?>
</option>


                                            <?php } ?>


                                </select>
      </div>
    </div>
    <div class="form-group">
      <label for="format">Format Laporan *</label>
      <div class="input-group">
        <select name="format_laporan" id="format_laporan" class="form-control" >
          <option value="tabel">Tabel</option>
          <option value="katalog">Katalog (1 koleksi 1 halaman)</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="admin_name">Batas Data * </label>
      <div class="radio">
        <label>
        <input type="radio" name="batas" id="batas1" value="all" >
        Semua data </label>
      </div>
      <div class="radio">
        <label>
        <input type="radio" name="batas" id="batas2" value="lain" >
        Berdasarkan No Urut (* Mengisi No urut batas awal dan akhir di kotak teks) </label>
      </div>
    </div>
    
    <div class="form-group">
      <label for="batas">Batas Awal dan akhir</label>
      <div style="clear:both"></div>
      <div class="col-xs-4 text-center">
        <input type="text" name="awal_cetak" id="awal_cetak" value="<?php echo $_smarty_tpl->tpl_vars['awal_cetak']->value;?>
" class="form-control" placeholder="Batas awal" />
      </div>
      <div class="col-xs-4 text-center">
        <input type="text" name="akhir_cetak" id="akhir_cetak"  value="<?php echo $_smarty_tpl->tpl_vars['data']->value['batas_akhir'];?>
" class="form-control" placeholder="Batas akhir" />
      </div>
      <div style="clear:both"></div>
    </div>
    <div class="form-group">
      <div class="input-group">
        <label for="format-laporan-tabel">
        <input type="checkbox" id="foto-cek" name="foto_export" value="yes">
        Dengan Foto</label>
      </div>
    </div>
    <button type="submit" class="btn btn-success"><i class='fa fa-file-pdf-o'></i> Export Data </button>
    <div id="notif-modal"></div>
  </form>
</div>
<div id="modal-export-pdf-footer" style="display:none;">
  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
 <?php }} ?>

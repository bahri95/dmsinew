<?php /* Smarty version Smarty-3.1.17, created on 2016-08-04 05:06:45
         compiled from "application/views/private/aspirasi/read.html" */ ?>
<?php /*%%SmartyHeaderCode:1139890596578458c40ffb83-88095395%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7f0c2edb9c3bf50ee3357bd9c98da6af9dab355e' => 
    array (
      0 => 'application/views/private/aspirasi/read.html',
      1 => 1470301600,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1139890596578458c40ffb83-88095395',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578458c521c021_92389316',
  'variables' => 
  array (
    'url_aspirasi_list' => 0,
    'jumlah_aspirasi' => 0,
    'result' => 0,
    'url_aspirasi_list_verifikasi' => 0,
    'jumlah_aspirasi_ver' => 0,
    'url_aspirasi_list_jawaban' => 0,
    'jumlah_aspirasi_jaw' => 0,
    'url_aspirasi_jawab' => 0,
    'data_aspirasi_by_id' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578458c521c021_92389316')) {function content_578458c521c021_92389316($_smarty_tpl) {?> <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Baca Aspirasi
          </h1>
         
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-3">
            
              <div class="box box-solid">
                <div class="box-header with-border">
                  <h3 class="box-title">Folders</h3>
                </div>
                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list']->value;?>
"><i class="fa fa-inbox"></i> Pesan Baru <span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?></span></a></li>
                    <li  class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list_verifikasi']->value;?>
"><i class="fa fa-envelope-o"></i> Sudah Diverifikasi <span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi_ver']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?></span></a></li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list_jawaban']->value;?>
"><i class="fa fa-envelope-o"></i> Sudah Dijawab<span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi_jaw']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?></span></a></li>
                  </ul>
                </div><!-- /.box-body -->
              </div><!-- /. box -->
            
            </div><!-- /.col -->
            <div class="col-md-9">
             <form action="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_jawab']->value;?>
" name="form-aspirasi" method="post">
              <div class="box box-primary">
                <div class="box-header with-border">
                <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_aspirasi_by_id']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
                   <?php if ($_smarty_tpl->tpl_vars['notification_msg']->value!='') {?>
                        <div class="col-md-12">
                            <?php if ($_smarty_tpl->tpl_vars['notification_status']->value=='red') {?>
                            <div class="alert alert-danger alert-dismissable">
                                        <i class="fa fa-ban"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        <?php echo $_smarty_tpl->tpl_vars['notification_msg']->value;?>
.
                                    </div>
                                 <?php }?>
                                 <?php if ($_smarty_tpl->tpl_vars['notification_status']->value=='green') {?>
                                 <div class="alert alert-success alert-dismissable">
                                        <i class="fa fa-check"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                         <?php echo $_smarty_tpl->tpl_vars['notification_msg']->value;?>
.
                                    </div>
                                 <?php }?>
                         </div>
                        <?php }?>
                        <h3 class="box-title"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
</h3>

                  <div class="box-tools pull-right">
                    <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                    <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
                  </div>
                </div><!-- /.box-header -->
                 
                <div class="box-body no-padding">
                  <div class="mailbox-read-info">
                    <input type="hidden" name="id_aspirasi" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_aspirasi'];?>
">
                    <table>
                    <tr>
                    <td>&nbsp;&nbsp;&nbsp;</td><td>Nama pengirim</td><td>:&nbsp;</td><td><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_pengirim'];?>
</td>
                    </tr>
                    <tr>
                    <td>&nbsp;&nbsp;&nbsp;</td><td>Email pengirim</td><td>:&nbsp;</td><td><?php echo $_smarty_tpl->tpl_vars['rs']->value['email'];?>
</td>
                    </tr>
                     <tr>
                    <td>&nbsp;&nbsp;&nbsp;</td><td>Ditunjukan Kepada</td><td>:&nbsp;</td><td><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
</td>
                  </tr>
                     <tr>
                    <td>&nbsp;&nbsp;&nbsp;</td><td>Tanggal Mengirim</td><td>:&nbsp;</td><td><?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
</td>
                  </tr>
                  <tr>
                    <td>&nbsp;&nbsp;&nbsp;</td><td><b>Isi Pesan Aspirasi</b></td>
                  </tr>
                  
                   </table>
                   </div><!-- /.mailbox-read-info -->
                     <div class="mailbox-read-message">
                     <table><tr>
                      <td>&nbsp;&nbsp;&nbsp;</td><td>"<?php echo $_smarty_tpl->tpl_vars['rs']->value['isi_aspirasi'];?>
"</td>
                     </tr></table>
                   </div>
                  
                </div><!-- /.box-body -->
               <?php } ?>
                <div class="box-footer">
                  <div class="form-group">
                  	<input type="hidden" name="nama_pengirim" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_pengirim'];?>
">
                  	<input type="hidden" name="email" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['email'];?>
">
                  	<input type="hidden" name="isi_aspirasi" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['isi_aspirasi'];?>
">
                  	<input type="hidden" name="nama_asosiasi" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
">
                        <label for="user_name_lama">Jawab</label>
                             <textarea name="jawaban" cols="72" rows="10" class="textarea"  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $_smarty_tpl->tpl_vars['rs']->value['jawaban'];?>
</textarea>
                  </div>
                  <div class="box-footer">
                      <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>  Simpan</button>
                     
                  </div>
                </div><!-- /.box-footer -->
              </div><!-- /. box -->
              </form>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper --><?php }} ?>

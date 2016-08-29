<?php /* Smarty version Smarty-3.1.17, created on 2016-08-29 10:30:00
         compiled from "application\views\private\registrasi\list_disetujui.html" */ ?>
<?php /*%%SmartyHeaderCode:1662357be66d79f1fb8-17700741%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a809d91dd99e2b3f41278245d6b1fa77a01ed02' => 
    array (
      0 => 'application\\views\\private\\registrasi\\list_disetujui.html',
      1 => 1472459399,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1662357be66d79f1fb8-17700741',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57be66d7a866d5_17354665',
  'variables' => 
  array (
    'jumlah_anggota_baru' => 0,
    'result' => 0,
    'url_anggota_list' => 0,
    'url_anggota_disetujui' => 0,
    'jumlah_anggota_disetujui' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_registrasi_hapus_disetujui' => 0,
    'data_anggota_disetujui' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57be66d7a866d5_17354665')) {function content_57be66d7a866d5_17354665($_smarty_tpl) {?>
<script type="text/javascript">
  function konfirmasi_delete_data(){
    tanya = confirm('Apakah anda yakin akan menghapus data ini!');
    if(tanya){
      return true;
    }else{
      return false;
    }
  }
</script>

<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            &nbsp;&nbsp;Anggota
            <small>
            <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?> Permintaan Anggota</small>
          </h1>
        </section>
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-3">
              
              <div class="box box-solid">
                <div class="box-header with-border">
                  <h3 class="box-title">Folder</h3>
                </div>
                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_list']->value;?>
"><i class="fa fa-inbox"></i> Permintaan Anggota<span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?></span></a></li>
                   <li  class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_disetujui']->value;?>
"><i class="fa fa-inbox"></i> Anggota Disetujui<span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_disetujui']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
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
              <div class="box box-primary">
                <div class="box-header with-border">
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
                  <h3 class="box-title">Daftar Anggota yang Disetujui</h3>
                  <div class="box-tools pull-right">
                    <div class="has-feedback">
                      <input type="text" class="form-control input-sm" placeholder="Search Mail"/>
                      <span class="glyphicon glyphicon-search form-control-feedback"></span>
                    </div>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                <form action="<?php echo $_smarty_tpl->tpl_vars['url_registrasi_hapus_disetujui']->value;?>
" name="form-registrasi_disetujui" method="post" onsubmit="javascript:return konfirmasi_delete_data();">
                <div class="box-body no-padding">
                  <div class="mailbox-controls">
                    <!-- Check all button -->
                    <div class="btn-group">
                     <button class="btn btn-default btn-sm" type="submit" name="hapus"><i class="fa fa-trash-o"></i></button>
                      </div><!-- /.btn-group -->
                    </div><!-- /.pull-right -->
                  </div>
                  <div class="table-responsive mailbox-messages">
                    <table class="table table-hover table-striped">
                      <thead>
                          <th width="5%" id="cekAll"><input type="checkbox" class="checked-all" name="checked-all"  id="checked-all" class="form-control"></th>
                          <th width="20%">Nama Anggota</th>
                          <th width="30%">Asosiasi yang dipilih</th>
                          <th width="20%">Pekerjaan</th>
                          <th width="15%"></th>
                      </thead>
                      <tbody>
                       <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_anggota_disetujui']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
                        <tr>
                          <td><input type="checkbox" name="id_registrasi[]" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
" /></td>
                          <td class="mailbox-name"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama'];?>
</td>
                          <td class="mailbox-subject"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
</td>
                          <td class="mailbox-date" width="10%"><?php echo $_smarty_tpl->tpl_vars['rs']->value['pekerjaan'];?>
</td>
                           <td align="center">
                               <div class="btn-group-vertical"><a href="javascript:void(0);" onClick="open_modal('Detail Permintaan Anggota',$('#modal-detail-anggota<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
').html(),$('#modal-detail-anggota-footer').html(),'medium');" title="Lihat Detail" class="btn btn-success btn-flat"><i class='fa fa-eye'></i></a>
                              </div> 
                              
                          </td>
                        </tr>
                       <?php } ?>
                      </tbody>
                    </table><!-- /.table -->
                  </div><!-- /.mail-box-messages -->
                </div><!-- /.box-body -->
                <div class="box-footer no-padding">
                  <div class="mailbox-controls">
                    <!-- Check all button -->
                     <button class="btn btn-default btn-sm" type="submit" name="hapus"><i class="fa fa-trash-o"></i></button>
                  </div>
                </div>
                </form>
              </div><!-- /. box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
          <?php echo $_smarty_tpl->getSubTemplate ("private/registrasi/detail_anggota.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

                     <!-- Modal form -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                      </div>
                      <div class="modal-body" id="modal-bodyku">
                      </div>
                      <div class="modal-footer" id="modal-footerq">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end of modal ------------------------------> 
        </section><!-- /.content -->
      </div><!-- /.content-wrapper --><?php }} ?>

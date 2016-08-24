<?php /* Smarty version Smarty-3.1.17, created on 2016-08-24 07:11:40
         compiled from "application\views\private\registrasi\list.html" */ ?>
<?php /*%%SmartyHeaderCode:2746257bc1c43cbf917-52339595%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2bc21fa119a19d3123d435d8d391bf206d9afce2' => 
    array (
      0 => 'application\\views\\private\\registrasi\\list.html',
      1 => 1472015445,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2746257bc1c43cbf917-52339595',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57bc1c43d5fbb8_64509025',
  'variables' => 
  array (
    'jumlah_aspirasi' => 0,
    'result' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_anggota_list' => 0,
    'jumlah_anggota_baru' => 0,
    'url_anggota_disetujui' => 0,
    'jumlah_anggota_disetujui' => 0,
    'url_aspirasi_hapus' => 0,
    'data_anggota_baru' => 0,
    'rs' => 0,
    'url_process_anggota_disetujui' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57bc1c43d5fbb8_64509025')) {function content_57bc1c43d5fbb8_64509025($_smarty_tpl) {?>


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
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
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


              <div class="box box-solid">


                <div class="box-header with-border">


                  <h3 class="box-title">Folder</h3>


                </div>


                <div class="box-body no-padding">
                  <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_list']->value;?>
"><i class="fa fa-inbox"></i> Permintaan Anggota<span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                          <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>

                     <?php } ?></span></a></li>
                   <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_disetujui']->value;?>
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





                  <h3 class="box-title">Pesan</h3>


                  <div class="box-tools pull-right">


                    <div class="has-feedback">


                      <input type="text" class="form-control input-sm" placeholder="Search Mail"/>


                      <span class="glyphicon glyphicon-search form-control-feedback"></span>


                    </div>


                  </div><!-- /.box-tools -->


                </div><!-- /.box-header -->


                <form action="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_hapus']->value;?>
" name="form-aspirasi" method="post" onsubmit="javascript:return konfirmasi_delete_data();">


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


                          <th width="30%">Asal Asosiasi</th>


                          <th width="20%">Pekerjaan</th>


                          <th width="5%"></th>


                      </thead>


                      <tbody>


                       


                       <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>


                        <tr>


                          <td><input type="checkbox" name="id_aspirasi[]" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_aspirasi'];?>
" /></td>


                          <td class="mailbox-name"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama'];?>
</td>


                          <td class="mailbox-subject"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
</td>


                          <td class="mailbox-date" width="10%"><?php echo $_smarty_tpl->tpl_vars['rs']->value['pekerjaan'];?>
</td>


                         


                          <td align="center">


                          


                              <div class="btn-group-vertical"><a href="<?php echo $_smarty_tpl->tpl_vars['url_process_anggota_disetujui']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
" title="Setujui" class="btn btn-success btn-flat"><i class='fa fa-check'></i></a>


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


        </section><!-- /.content -->


      </div><!-- /.content-wrapper --><?php }} ?>

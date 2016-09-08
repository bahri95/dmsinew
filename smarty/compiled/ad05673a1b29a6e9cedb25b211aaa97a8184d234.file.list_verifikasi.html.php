<?php /* Smarty version Smarty-3.1.17, created on 2016-08-30 07:57:52
         compiled from "application\views\private\aspirasi\list_verifikasi.html" */ ?>
<?php /*%%SmartyHeaderCode:10467578df047431a22-69966718%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ad05673a1b29a6e9cedb25b211aaa97a8184d234' => 
    array (
      0 => 'application\\views\\private\\aspirasi\\list_verifikasi.html',
      1 => 1472536670,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10467578df047431a22-69966718',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578df0475df585_00629356',
  'variables' => 
  array (
    'jumlah_aspirasi' => 0,
    'result' => 0,
    'url_aspirasi' => 0,
    'url_aspirasi_list_verifikasi' => 0,
    'jumlah_aspirasi_ver' => 0,
    'url_aspirasi_list_jawaban' => 0,
    'jumlah_aspirasi_jaw' => 0,
    'url_aspirasi_hapus_ver' => 0,
    'data_aspirasi_ver' => 0,
    'rs' => 0,
    'url_aspirasi_read' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578df0475df585_00629356')) {function content_578df0475df585_00629356($_smarty_tpl) {?><script type="text/javascript">  function konfirmasi_delete_data(){    tanya = confirm('Apakah anda yakin akan menghapus data ini!');    if(tanya){      return true;    }    else{      return false;    }  }</script><!-- Content Wrapper. Contains page content --><div class="content-wrapper">  <!-- Content Header (Page header) -->  <section class="content-header">    <h1>      &nbsp;&nbsp;Aspirasi      <small><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>        <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
        <?php } ?> Pesan Baru      </small>    </h1>  </section>  <!-- Main content -->  <section class="content">    <div class="row">      <div class="col-md-3">        <div class="box box-solid">          <div class="box-header with-border">            <h3 class="box-title">Folders            </h3>          </div>          <div class="box-body no-padding">            <ul class="nav nav-pills nav-stacked">              <li >                <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi']->value;?>
">                  <i class="fa fa-inbox">                  </i> Pesan Baru                   <span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                    <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                    <?php } ?>                  </span>                </a>              </li>              <li class="active">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list_verifikasi']->value;?>
">                  <i class="fa fa-envelope-o">                  </i> Sudah Diverifikasi                   <span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi_ver']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                    <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                    <?php } ?>                  </span>                </a>              </li>              <li>                <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list_jawaban']->value;?>
">                  <i class="fa fa-envelope-o">                  </i> Sudah Dijawab                  <span class="label label-primary pull-right"><?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi_jaw']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                    <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                    <?php } ?>                  </span>                </a>              </li>            </ul>          </div>          <!-- /.box-body -->        </div>        <!-- /. box -->      </div>      <!-- /.col -->      <div class="col-md-9">        <div class="box box-primary">          <div class="box-header with-border">            <h3 class="box-title">Pesan            </h3>                      </div>          <!-- /.box-header -->          <form action="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_hapus_ver']->value;?>
" name="form-aspirasi" method="post" onsubmit="javascript:return konfirmasi_delete_data();">            <div class="box-body no-padding">              <div class="mailbox-controls">                <!-- Check all button -->                <div class="btn-group">                  <button class="btn btn-default btn-sm" type="submit" name="hapus">                    <i class="fa fa-trash-o">                    </i>                  </button>                </div>                <!-- /.btn-group -->              </div>              <!-- /.pull-right -->            </div>            <div class="panel panel-default">            <div class="panel-body">            <div class="table-responsive mailbox-messages">               <table class="table table-hover table-striped" id="table_datagrid">                <thead>                  <th width="5%" id="cekAll">                    <input type="checkbox" class="checked-all" name="checked-all"  id="checked-all" class="form-control">                  </th>                  <th width="20%">Judul                  </th>                  <th width="40%">Pesan Aspirasi                  </th>                  <th width="10%">Tanggal                  </th>                </thead>                <tbody>                  <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_aspirasi_ver']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>                  <tr>                    <td>                      <input type="checkbox" name="id_aspirasi[]" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_aspirasi'];?>
" />                    </td>                    <td class="mailbox-name">                      <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_read']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_aspirasi'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
                      </a>                    </td>                    <td class="mailbox-subject"><?php echo $_smarty_tpl->tpl_vars['rs']->value['isi_aspirasi'];?>
                    </td>                    <td class="mailbox-date"><?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
                    </td>                  </tr>                  <?php } ?>                </tbody>              </table>              <!-- /.table -->            </div>            <!-- /.mail-box-messages -->             </div><!--panel body-->                  </div><!--panel default -->            </div>          <!-- /.box-body -->          <div class="box-footer no-padding">            <div class="mailbox-controls">              <!-- Check all button -->              <button class="btn btn-default btn-sm" type="submit" name="hapus">                <i class="fa fa-trash-o">                </i>              </button>            </div>          </div>          </form>      </div>      <!-- /. box -->    </div>    <!-- /.col -->    </div>  <!-- /.row -->  </section><!-- /.content --></div><!-- /.content-wrapper --><?php }} ?>

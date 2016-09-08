<?php /* Smarty version Smarty-3.1.17, created on 2016-09-06 02:15:59
         compiled from "application/views/private/harga/list.html" */ ?>
<?php /*%%SmartyHeaderCode:41463365857738af01f5933-08055069%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9ae071d9322dffed7843a6afb3503e05d153204a' => 
    array (
      0 => 'application/views/private/harga/list.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '41463365857738af01f5933-08055069',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57738af02bb464_98268466',
  'variables' => 
  array (
    'url_private' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_add' => 0,
    'url_process' => 1,
    'data' => 1,
    'result' => 1,
    'no' => 1,
    'url_edit' => 1,
    'pagging' => 1,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57738af02bb464_98268466')) {function content_57738af02bb464_98268466($_smarty_tpl) {?><script type="text/javascript">  function konfirmasi_delete_data(){    tanya = confirm('Apakah anda yakin akan menghapus data ini!');    if(tanya){      return true;    }else{      return false;    }  }</script>                <section class="content-header">                    <h1>                       Harga                        <small>panel</small>                    </h1>                    <ol class="breadcrumb">                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>                        <li class="active">Harga</li>                    </ol>                </section>                <!-- Main content -->                <section class="content">        <!-- Small boxes (Stat box) -->                    <div class="row">                     <!-- notification template -->                        <?php if ($_smarty_tpl->tpl_vars['notification_msg']->value!='') {?>                        <div class="col-md-12">                            <?php if ($_smarty_tpl->tpl_vars['notification_status']->value=='red') {?>                            <div class="alert alert-danger alert-dismissable">                                        <i class="fa fa-ban"></i>                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>                                        <?php echo $_smarty_tpl->tpl_vars['notification_msg']->value;?>
.                                    </div>                                 <?php }?>                                 <?php if ($_smarty_tpl->tpl_vars['notification_status']->value=='green') {?>                                 <div class="alert alert-success alert-dismissable">                                        <i class="fa fa-check"></i>                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>                                         <?php echo $_smarty_tpl->tpl_vars['notification_msg']->value;?>
.                                    </div>                                 <?php }?>                         </div>                        <?php }?>                        <div class="col-md-12">                        <div class="nav-tabs-custom">                                    <ul class="nav nav-tabs">                                      <li class="active"><a href="#tab_1" data-toggle="tab">Tabel</a></li>                                      <li><a href="#tab_2" data-toggle="tab">Grafik</a></li>                                    </ul>                        <div class="tab-content">                        <div class="tab-pane active" id="tab_1">                          <div class="box">                                <div class="box-header">                                    <h3 class="box-title">Tabel Harga</h3>                                     <div class="box-tools">                                      <div class="btn-group pull-right"><a href="<?php echo $_smarty_tpl->tpl_vars['url_add']->value;?>
" title="Tambah Data" class="btn bg-olive btn-flat"><i class='fa fa-plus'></i> Tambah Data</a>                                        </div>                                    </div>                                </div>                                                                   <form action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" name="form-koleksi" method="post" onsubmit="javascript:return konfirmasi_delete_data();">                                  <div style="margin-left:10px;">                                    <input type="submit" name="hapus" value="hapus" class="btn btn-danger"/>                                    </div>                                    <div class="box-body table-responsive">                                       <div class="nav-tabs-custom">                                                    <ul class="nav nav-tabs">                                                      <li class="active"><a href="#tab_3" data-toggle="tab">Gabung</a></li>                                                      <li><a href="#tab_4" data-toggle="tab">Domestik</a></li>                                                      <li><a href="#tab_5" data-toggle="tab">Ekspor</a></li>                                                    </ul>                                        <div class="tab-content">                                        <div class="tab-pane active" id="tab_3">                                        <table id="table_datagrid" class="table table-bordered table-striped"">                                            <thead>                                                <tr>                                               <th width="5%" id="cekAll"><input type="checkbox" class="checked-all" name="checked-all"  id="checked-all" class="form-control"></th>                                                <th width="5%">No.</th>                                                <th width="15%">Kategori Harga</th>                                                <th width="10%" align="center">Tahun</th>                                                <th width="10%" align="center">Bulan</th>                                                <th width="20%" align="center">Harga Rupiah</th>                                                <th width="20%" align="center">Harga Dolar</th>                                                <th width="7%"></th>                                                </tr>                                            </thead>                                            <tbody>                                              <?php if ($_smarty_tpl->tpl_vars['data']->value!='') {?>                                              <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                                            <tr>                                                <td align="center"><input type=checkbox name="id_harga[]" value="<?php echo $_smarty_tpl->tpl_vars['result']->value['id_harga'];?>
" class="checkbox" /></td>                                                <td><?php echo $_smarty_tpl->tpl_vars['no']->value++;?>
</td>                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['katharga'];?>
</td>                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['tahun'];?>
</td>                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
</td>                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
</td>                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
</td>                                                <td align="center">                                                <div class="btn-group-vertical"><a href="<?php echo $_smarty_tpl->tpl_vars['url_edit']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_harga'];?>
" title="Edit" class="btn btn-success btn-flat"><i class='fa fa-pencil'></i></a>                                              </div>                                                 </td>                                            </tr>                                            <?php } ?>                                            <?php }?>                                            </tbody>                                            <tfoot>                                        </tfoot>                                    </table>                                     <div class="box-footer clearfix">                                    <input type="submit" name="hapus" value="hapus" class="btn btn-danger"/>                                       <ul class="pagination pagination-sm no-margin pull-right"> <?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?><?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>
<?php }?></ul>                                    </div>                                    </div><!--tab 3-->                                    <div class="tab-pane" id="tab_4">                                       <?php echo $_smarty_tpl->getSubTemplate ("private/harga/domestik.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
                                    </div><!--tab 4-->                                    <div class="tab-pane" id="tab_5">                                        <?php echo $_smarty_tpl->getSubTemplate ("private/harga/ekspor.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
                                    </div><!--tab 5-->                                    </div>                                    </div>                                    </div><!-- /.box-body -->                                    </form>                            </div><!-- /.box -->                            </div><!--nav-tabs-1-->                            <!-- tab 2-->                            <div class="tab-pane" id="tab_2">                             <?php echo $_smarty_tpl->getSubTemplate ("private/harga/grafik.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
                            </div><!--nav-tabs-2-->                            </div><!--nav-tabs-content-->                            </div><!--nav-tabs-custom-->                        </div><!-- /.col -->                    </div><!-- /.row -->                </section><!-- /.content --><?php }} ?>

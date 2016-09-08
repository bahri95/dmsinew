<?php /* Smarty version Smarty-3.1.17, created on 2016-08-26 09:48:08
         compiled from "application\views\private\propinsi\list.html" */ ?>
<?php /*%%SmartyHeaderCode:13232578dde6a738d45-76941638%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c97429f50310a9e2b05750dfe1077d81faa357bb' => 
    array (
      0 => 'application\\views\\private\\propinsi\\list.html',
      1 => 1471594292,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13232578dde6a738d45-76941638',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578dde6a7c5761_19355892',
  'variables' => 
  array (
    'url_private' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_add' => 0,
    'propinsi' => 0,
    'result' => 0,
    'url_edit' => 0,
    'url_delete' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578dde6a7c5761_19355892')) {function content_578dde6a7c5761_19355892($_smarty_tpl) {?>
                <section class="content-header">
                    <h1>
                      Provinsi
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li class="active">Provinsi</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
				<!-- Small boxes (Stat box) -->
                    <div class="row">
                     <!-- notification template -->
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
                        <div class="col-md-12">
                        	<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Provinsi</h3>
                                    <div class="box-tools">
                                    	<div class="btn-group pull-right"><a href="<?php echo $_smarty_tpl->tpl_vars['url_add']->value;?>
" title="Tambah Data" class="btn bg-olive btn-flat"><i class='fa fa-plus'></i> Tambah Data</a></div>
                                    </div>
                                </div><!-- /.box-header -->
                                    <div class="box-body table-responsive">
                                        <table id="table_datagrid" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                <th width="15%" style="text-align:center;">Id Provinsi</th>
                                                    <th width="65%">Nama Provinsi</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <?php if ($_smarty_tpl->tpl_vars['propinsi']->value!='') {?>
                                              <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['propinsi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                                            <tr>
                                                <td align="center"><?php echo $_smarty_tpl->tpl_vars['result']->value['id_propinsi'];?>
.</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['nama_propinsi'];?>
</td>
                                                <td align="center">
                                                   <div class="btn-group"><a href="<?php echo $_smarty_tpl->tpl_vars['url_edit']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_propinsi'];?>
" title="Edit" class="btn btn-success btn-flat"><i class='fa fa-pencil'></i></a>&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['url_delete']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['result']->value['id_propinsi'];?>
" title="Hapus" class="btn btn-danger btn-flat" id="btndel<?php echo $_smarty_tpl->tpl_vars['result']->value['id_propinsi'];?>
" onclick="return konfirmasi_delete();"><i class='fa fa-trash'></i></a></div> 
                                                </td>
                                            </tr>
                                            <?php } ?>
                                            <?php }?>
                                            </tbody>
                                            <tfoot>
                                            <tr>
                                                <th style="text-align:center;">Id Provinsi</th>
                                                <th>Nama Provinsi</th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                    </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div><!-- /.row -->
                    
                </section><!-- /.content -->

<?php }} ?>

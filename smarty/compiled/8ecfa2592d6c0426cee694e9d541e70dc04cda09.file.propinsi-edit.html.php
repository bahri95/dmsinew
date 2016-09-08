<?php /* Smarty version Smarty-3.1.17, created on 2016-08-08 04:26:06
         compiled from "application/views/private/propinsi/propinsi-edit.html" */ ?>
<?php /*%%SmartyHeaderCode:129503673057a8421e2fe467-21537174%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8ecfa2592d6c0426cee694e9d541e70dc04cda09' => 
    array (
      0 => 'application/views/private/propinsi/propinsi-edit.html',
      1 => 1470298211,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '129503673057a8421e2fe467-21537174',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'url_private' => 0,
    'url_list' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_process' => 0,
    'data' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57a8421e5b2f62_85864759',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a8421e5b2f62_85864759')) {function content_57a8421e5b2f62_85864759($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                      Provinsi
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i> Provinsi</a></li>
                        <li class="active">Update Data</li>
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
                        <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Update Data Provinsi</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                               <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post">
                                <input type="hidden" name="id_propinsi" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_propinsi'];?>
" />
                                   <div class="box-body">
                                   		<div class="form-group">
                                            <label for="user_name_lama">Id Provinsi </label>
                                            <input type="text" name="id_propinsiv" id="id_propinsiv" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_propinsi'];?>
" maxlength="50" disabled="disabled" />
                                        </div>
                                   		<div class="form-group">
                                            <label for="user_name_lama">Nama Provinsi * </label>
                                            <input type="text" name="nama_propinsi" id="nama_propinsi" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['nama_propinsi'];?>
" maxlength="50" />
                                        </div>
                                        <div class="form-group">
                                            <label for="user_name_lama">Nama Singkat * </label>
                                            <input type="text" name="nama_singkat" id="nama_singkat" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['nama_singkat'];?>
" maxlength="50" />
                                        </div>
                                    </div><!-- /.box-body -->
                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>  Simpan</button>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"  class="btn btn-primary"><i class="fa fa-close"></i>  Batal</a>
                                    </div>
                                </form>
                            </div><!-- /.box -->
                        
                        </div><!-- /.col -->
                        
                        
                    </div><!-- /.row -->
                    
 </section><!-- /.content -->

<?php }} ?>

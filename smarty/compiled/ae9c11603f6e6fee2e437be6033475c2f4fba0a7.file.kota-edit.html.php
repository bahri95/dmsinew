<?php /* Smarty version Smarty-3.1.17, created on 2016-08-08 05:29:27
         compiled from "application/views/private/kota/kota-edit.html" */ ?>
<?php /*%%SmartyHeaderCode:18448165757a850f7dc2cd7-51720487%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ae9c11603f6e6fee2e437be6033475c2f4fba0a7' => 
    array (
      0 => 'application/views/private/kota/kota-edit.html',
      1 => 1470298201,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18448165757a850f7dc2cd7-51720487',
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
    'propinsi' => 0,
    'result_propinsi' => 0,
    'propinsi_selected' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57a850f7ea1935_80087136',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a850f7ea1935_80087136')) {function content_57a850f7ea1935_80087136($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                      Kota
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i> Kota</a></li>
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
                                    <h3 class="box-title">Update Data Kota</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                               <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post">
                                 <input type="hidden" name="id_kota" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_kota'];?>
" />
                                   <div class="box-body">
                                   		<div class="form-group">
                                            <label for="user_name_lama"> Provinsi </label>
                                             <select name="id_propinsi" class="form-control">
                                            <option value="">--</option>
                                            <?php  $_smarty_tpl->tpl_vars['result_propinsi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result_propinsi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['propinsi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_propinsi']->key => $_smarty_tpl->tpl_vars['result_propinsi']->value) {
$_smarty_tpl->tpl_vars['result_propinsi']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi'];?>
" <?php if ($_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi']==$_smarty_tpl->tpl_vars['propinsi_selected']->value) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi'];?>
 - <?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['nama_propinsi'];?>
</option>
                                            <?php } ?>
                                        </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="nama_kota">Kode Kota * </label>
                                            <input type="text" name="id_kotav" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_kota'];?>
"  id="id_kotav" class="form-control"  maxlength="10" disabled="disabled"/>
                                        </div>
                                   		<div class="form-group">
                                            <label for="user_name_lama">Nama Kota * </label>
                                            <input type="text" name="nama_kota" id="nama_kota" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['nama_kota'];?>
" size="45" maxlength="255" />
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

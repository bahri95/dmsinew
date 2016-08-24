<?php /* Smarty version Smarty-3.1.17, created on 2016-08-08 02:54:18
         compiled from "application/views/private/administrator/edit.html" */ ?>
<?php /*%%SmartyHeaderCode:146389513857a3fbfb4f0549-17390126%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd6bb3d9df8dc046ae8b22fe87682ddd81eb80c21' => 
    array (
      0 => 'application/views/private/administrator/edit.html',
      1 => 1470639253,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '146389513857a3fbfb4f0549-17390126',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57a3fbfb6061a3_79959463',
  'variables' => 
  array (
    'url_private' => 0,
    'url_list' => 0,
    'notification_msg' => 0,
    'notification_status' => 0,
    'url_process' => 0,
    'data' => 0,
    'data_asosiasi' => 0,
    'result_as' => 0,
    'data_auth' => 0,
    'result_auth' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a3fbfb6061a3_79959463')) {function content_57a3fbfb6061a3_79959463($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                      Pengolah Data
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i> Pengolah Data</a></li>
                        <li class="active">Tambah Data</li>
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
                        <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post" nctype="multipart/form-data">
                        <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Tambah Data Pengolah Data</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                   <div class="box-body">
                                   <input type="hidden" name="id_user" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_user'];?>
">
                                         <div class="form-group">
                                            <label for="admin_name">Nama Pengolah Data * </label>
                                            <input type="text" name="admin_name" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['admin_name'];?>
" maxlength="100" id="admin_name" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="admin_name">Jenis Kelamin * </label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin1" value="L" <?php if ($_smarty_tpl->tpl_vars['data']->value['jenis_kelamin']=='L') {?>checked="checked"<?php }?>>
                                                    Laki-laki
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="jenis_kelamin" id="jenis_kelamin2" value="P" <?php if ($_smarty_tpl->tpl_vars['data']->value['jenis_kelamin']=='P') {?>checked="checked"<?php }?>>
                                                    Perempuan
                                                </label>
                                            </div>
                                            
                                           
                                        </div>
                                        <div class="form-group">
                                            <label for="id_auth">Asosiasi * </label>
                                           <select name="id_asosiasi" class="form-control">
                                               
                                                <?php  $_smarty_tpl->tpl_vars['result_as'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result_as']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_asosiasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_as']->key => $_smarty_tpl->tpl_vars['result_as']->value) {
$_smarty_tpl->tpl_vars['result_as']->_loop = true;
?>
                                             <option value="<?php echo $_smarty_tpl->tpl_vars['result_as']->value['id_asosiasi'];?>
" <?php if ($_smarty_tpl->tpl_vars['data']->value['id_asosiasi']==$_smarty_tpl->tpl_vars['result_as']->value['id_asosiasi']) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_as']->value['nama_asosiasi'];?>
</option>
                                             <?php } ?>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="id_auth">Hak Akses * </label>
                                           <select name="id_auth" class="form-control">
                                               
                                                <?php  $_smarty_tpl->tpl_vars['result_auth'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result_auth']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_auth']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_auth']->key => $_smarty_tpl->tpl_vars['result_auth']->value) {
$_smarty_tpl->tpl_vars['result_auth']->_loop = true;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['result_auth']->value['id_auth'];?>
"<?php if ($_smarty_tpl->tpl_vars['data']->value['id_auth']==$_smarty_tpl->tpl_vars['result_auth']->value['id_auth']) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_auth']->value['auth_name'];?>
</option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                      
                                       
                                       
                                        <div class="form-group">
                                            <label for="jabatan">Jabatan </label>
                                            <input type="text" name="jabatan" id="jabatan" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['jabatan'];?>
" maxlength="100"  class="form-control" />
                                        </div>
                                         
                                        <div class="form-group">
                                            <label for="no_telp">No Telp/HP</label>
                                            <input type="text" name="no_telp" id="no_telp" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['no_telp'];?>
" maxlength="30"  class="form-control" />
                                        </div>

                                       
                                    </div><!-- /.box-body -->
                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>  Simpan</button>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"  class="btn btn-primary"><i class="fa fa-close"></i>  Batal</a>
                                    </div>
                               
                            </div>
                        </div><!-- /.box -->
                       
                          <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Akun Login</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                   <div class="box-body">
                                         <div class="form-group">
                                            <label for="admin_name">Username * </label>
                                            <input type="text" name="user_name" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['user_name'];?>
" maxlength="100" id="user_name" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="admin_name">Password * </label>
                                            <input type="password" name="user_pass" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['user_pass'];?>
" maxlength="100" id="user_pass" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="admin_name">Email * </label>
                                            <input type="text" name="user_mail" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['user_mail'];?>
" maxlength="100" id="user_mail" class="form-control" />
                                        </div>
                                       
                                    </div>    
                             </div>
                            </div><!-- /.col -->
                        
                        
                    </div><!-- /.row -->
                    
 </section><!-- /.content -->

<?php }} ?>

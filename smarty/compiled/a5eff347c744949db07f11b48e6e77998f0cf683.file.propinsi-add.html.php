<?php /* Smarty version Smarty-3.1.17, created on 2016-08-26 09:48:10
         compiled from "application\views\private\propinsi\propinsi-add.html" */ ?>
<?php /*%%SmartyHeaderCode:6409578dde71899fa2-04201734%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a5eff347c744949db07f11b48e6e77998f0cf683' => 
    array (
      0 => 'application\\views\\private\\propinsi\\propinsi-add.html',
      1 => 1471594292,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6409578dde71899fa2-04201734',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578dde71997e60_26062995',
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
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578dde71997e60_26062995')) {function content_578dde71997e60_26062995($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                      Provinsi
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i> Provinsi</a></li>
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
                        <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Tambah Data Provinsi</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                               <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post">
                                   <div class="box-body">
                                   		<div class="form-group">
                                            <label for="user_name_lama">Nama Provinsi * </label>
                                            <input type="text" name="nama_propinsi" id="nama_propinsi" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['nama_provinsi'];?>
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

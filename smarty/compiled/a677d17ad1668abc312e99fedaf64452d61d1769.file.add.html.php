<?php /* Smarty version Smarty-3.1.17, created on 2016-08-09 02:38:45
         compiled from "application\views\private\profil\add.html" */ ?>
<?php /*%%SmartyHeaderCode:100645791c9d1ad0cc4-13303992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a677d17ad1668abc312e99fedaf64452d61d1769' => 
    array (
      0 => 'application\\views\\private\\profil\\add.html',
      1 => 1470700988,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '100645791c9d1ad0cc4-13303992',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5791c9d1bab8f8_11109580',
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
<?php if ($_valid && !is_callable('content_5791c9d1bab8f8_11109580')) {function content_5791c9d1bab8f8_11109580($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                      Profil Instansi
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i>  Profil Instansi</a></li>
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
                        <div class="col-md-9">
                        <!-- form add -->
                             <div class="box box-success">
                                  <!-- Custom Tabs -->
                                  <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs">
                                      <li class="active"><a href="#tab_1" data-toggle="tab">Indonesia</a></li>
                                      <li><a href="#tab_2" data-toggle="tab">English</a></li>
                                     
                                    </ul>
                                     <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post">
                                    <div class="tab-content">
                                      <div class="tab-pane active" id="tab_1">
                                        
                                             <div class="box-body">
                                             		<div class="form-group">
                                                      <label for="judul">Judul * &nbsp;&nbsp;</label>
                                                      <input type="text" class="form-control" name="judul" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['judul'];?>
" size="100" maxlength="255" />
                                                  </div>
                                                  <div class="form-group" style="width:30%">
                                                      <label for="order_num" style="float:left;">No Urut * &nbsp;&nbsp;</label>
                                                      <input type="number" min="1" class="form-control" name="order_num" id="order_num" class="col-xs-3" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['order_num'];?>
" size="10" maxlength="10" />
                                                      <div style="clear:both"></div>
                                                  </div>
                                                  <div class="form-group">
                                                  <label for="content">Isi Profil *</label>
                                                       <textarea class="textarea" name="content"  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $_smarty_tpl->tpl_vars['data']->value['content'];?>
</textarea>
                                                  </div>
                                              </div><!-- /.box-body -->
                                              
                                      </div><!-- /.tab pane 1 -->
                                      <!--tab inggris-->
                                      <div class="tab-pane" id="tab_2">
                                       
                                             <div class="box-body">
                                                <div class="form-group">
                                                      <label for="judul">Title * &nbsp;&nbsp;</label>
                                                      <input type="text" class="form-control" name="judul_english" value="" size="100" maxlength="255" />
                                                  </div>
                                                 
                                                  <div class="form-group">
                                                  <label for="content">Content *</label>
                                                       <textarea class="textarea" name="content_english"  style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $_smarty_tpl->tpl_vars['data']->value['content'];?>
</textarea>
                                                  </div>
                                              </div><!-- /.box-body -->
                                              <div class="box-footer">
                                                  <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>  Simpan</button>
                                                  <a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"  class="btn btn-primary"><i class="fa fa-close"></i>  Batal</a>
                                              </div>
                                          </form>
                                      </div><!-- /.tab pane 2 -->
                                    </div><!-- /.tab content -->
                                    </form>
                               </div><!-- /.tab customs -->
                        </div><!-- /.col -->
                        </div>

                        
                    </div><!-- /.row -->

                    
 </section><!-- /.content -->

<?php }} ?>
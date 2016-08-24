<?php /* Smarty version Smarty-3.1.17, created on 2016-08-15 23:18:33
         compiled from "application/views/private/asosiasi/asosiasi-edit.html" */ ?>
<?php /*%%SmartyHeaderCode:203807444157b28609aa8e64-42497139%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '44ad15318e4980c975a4f41ad16a8e09c3b1b579' => 
    array (
      0 => 'application/views/private/asosiasi/asosiasi-edit.html',
      1 => 1470722578,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '203807444157b28609aa8e64-42497139',
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
    'url_kota' => 0,
    'propinsi' => 0,
    'result_propinsi' => 0,
    'data_kota' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57b2860a484aa9_29976858',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57b2860a484aa9_29976858')) {function content_57b2860a484aa9_29976858($_smarty_tpl) {?>                <section class="content-header">
                    <h1>
                     Asosiasi Anggota
                        <small>panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"><i class="fa "></i>  Asosiasi Anggota</a></li>
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
                        <!-- form start -->
                       <form id="form" action="<?php echo $_smarty_tpl->tpl_vars['url_process']->value;?>
" method="post" enctype="multipart/form-data">
                       <input type="hidden" name="id_asosiasi" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['id_asosiasi'];?>
" />
                       <input type="hidden" name="logo_lama" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['logo_asosiasi'];?>
" />
                        <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Update Data  Asosiasi Anggota</h3>
                                </div><!-- /.box-header -->
                                   <div class="box-body">
                                   		<div class="form-group">
                                            <label for="user_name_lama">Logo Asosiasi</label>
                                            <br />
											<div style="text-align:center;background-color:#55D973;padding:10px;"><img src="<?php echo $_smarty_tpl->tpl_vars['data']->value['foto_utama'];?>
" style="width:<?php echo $_smarty_tpl->tpl_vars['data']->value['max_width'];?>
;"  /></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="user_name_baru">Upload Logo</label>
                                            <input type="file" name="foto_asosiasi" id="foto_asosiasi" size="50" />
                                            <p class="help-block">Max. 500Kb</p>
                                        </div>
                                   		<div class="form-group">
                                            <label for="nama_kota">Nama Asosiasi *</label>
                                           <input type="text" name="nama_asosiasi" id="nama_asosiasi" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['nama_asosiasi'];?>
" class="form-control" maxlength="150" />
                                        </div>
                                        <div class="form-group">
                                            <label for="nama_kota">Profil</label>
                                          <textarea name="profil" id="profil" class="form-control" cols="50" rows="5"><?php echo $_smarty_tpl->tpl_vars['data']->value['profil'];?>
</textarea>
                                        </div>

                                         <div class="form-group">
                                            <label for="nama_kota">Profil English</label>
                                          <textarea name="profil_english" id="profil" class="form-control" cols="50" rows="5"><?php echo $_smarty_tpl->tpl_vars['data']->value['profil_english'];?>
</textarea>
                                        </div>
                                       
                                    </div><!-- /.box-body -->
                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>  Simpan</button>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['url_list']->value;?>
"  class="btn btn-primary"><i class="fa fa-close"></i>  Batal</a>
                                    </div>
                              
                            </div><!-- /.box -->
                        
                        </div><!-- /.col -->
                          <div class="col-md-6">
                        <!-- form add -->
                             <div class="box box-success">
                                
                                   <div class="box-body">
                                   		
                                        <div class="form-group">
                                            <label for="id_propinsi">Provinsi * </label>
                                           <select name="id_propinsi" id="id_propinsi" class="form-control" onchange="javascript:LoadKota('<?php echo $_smarty_tpl->tpl_vars['url_kota']->value;?>
/'+this.value);">
                                            <option value="">-Pilih Provinsi-</option>
                                            <?php  $_smarty_tpl->tpl_vars['result_propinsi'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result_propinsi']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['propinsi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result_propinsi']->key => $_smarty_tpl->tpl_vars['result_propinsi']->value) {
$_smarty_tpl->tpl_vars['result_propinsi']->_loop = true;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi'];?>
" <?php if ($_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi']==$_smarty_tpl->tpl_vars['data']->value['id_propinsi']) {?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['id_propinsi'];?>
 - <?php echo $_smarty_tpl->tpl_vars['result_propinsi']->value['nama_propinsi'];?>
</option>
                                            <?php } ?>
                                        </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="id_propinsi">Kota * </label>
                                          <div id="kota_area"> <select name="id_kota" id="id_kota" class="form-control">
                      <option value="">----Pilih Kota----</option>
                    <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_kota']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                      <option value="<?php echo $_smarty_tpl->tpl_vars['result']->value['id_kota'];?>
" <?php if ($_smarty_tpl->tpl_vars['result']->value['id_kota']==$_smarty_tpl->tpl_vars['data']->value['id_kota']) {?>selected='selected'<?php }?>><?php echo $_smarty_tpl->tpl_vars['result']->value['nama_kota'];?>
</option>
                    <?php } ?>
                    </select></div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="nama_kota">Alamat *</label>
                                           <input type="text" name="alamat" id="alamat" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['alamat'];?>
" class="form-control"  maxlength="200" />
                                        </div>
                                        <div class="form-group">
                                            <label for="nama_kota">Kode Pos</label>
                                         <input type="text" name="kodepos" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['kodepos'];?>
"  class="form-control"  maxlength="20" />
                                        </div>
                                        <div class="form-group">
                                            <label for="nama_kota">Telepon</label>
                                         <input type="text" name="telepon" id="telepon" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['telepon'];?>
"   class="form-control"  maxlength="30" />
                                        </div>
                                       <div class="form-group">
                                            <label for="nama_kota">Email</label>
                                        <input type="text" name="email" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['email'];?>
"  id="email"  class="form-control"  maxlength="50" />
                                        </div>
                                         <div class="form-group">
                                            <label for="nama_kota">Fax</label>
                                         <input type="text" name="fax" id="fax" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['fax'];?>
" class="form-control"  maxlength="30" />
                                        </div>
                                        <div class="form-group">
                                            <label for="nama_kota">Website</label>
                                        <input type="text" name="website" value="<?php echo $_smarty_tpl->tpl_vars['data']->value['website'];?>
" id="website"  class="form-control" maxlength="50"  />
                                        </div>
                                       
                                  </div>
                              </div><!-- /.box --> 
                          </div><!-- /.col -->
                          </form>
                        
                    </div><!-- /.row -->
                    
 </section><!-- /.content -->



<script type="text/javascript">
    // tiny
  	function LoadKota(url_kota){
		$("#kota_area").load(url_kota);
	}
</script>


<?php }} ?>

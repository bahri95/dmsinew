<?php /* Smarty version Smarty-3.1.17, created on 2016-08-25 11:49:32
         compiled from "application\views\private\registrasi\detail_anggota.html" */ ?>
<?php /*%%SmartyHeaderCode:1398157be752ce50110-35500499%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '77e099ab51cff82047a9d80ad1ba79e86529b762' => 
    array (
      0 => 'application\\views\\private\\registrasi\\detail_anggota.html',
      1 => 1472118569,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1398157be752ce50110-35500499',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57be752ce57e15_71813255',
  'variables' => 
  array (
    'data_anggota' => 1,
    'rs' => 1,
    'BASEURL' => 1,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57be752ce57e15_71813255')) {function content_57be752ce57e15_71813255($_smarty_tpl) {?>
 <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_anggota']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
 <div class="container" id="modal-detail-anggota<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
" style="display:none;" >
      <div class="row">
    
        <div class="col-xs-12  toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama'];?>
</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"><img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/registrasi/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
" width="100" class="img-circle img-responsive"> </div>
                
               
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Pekerjaan</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['pekerjaan'];?>
</td>
                      </tr>
                      <tr>
                        <td>Organisasi</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
</td>
                      </tr>
                    
                      
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:<?php echo $_smarty_tpl->tpl_vars['rs']->value['email'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['email'];?>
</a></td>
                      </tr>
                       <tr>
                        <td>Perusahaan</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['perusahaan'];?>
</td>
                      </tr>
                      <tr>
                        <td>Alamat</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['alamat'];?>
</td>
                      </tr>
                      <tr>
                        <td>Website</td>
                        <td><a href="http://<?php echo $_smarty_tpl->tpl_vars['rs']->value['web'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['web'];?>
</a></td>
                      </tr>
                      <tr>
                        <td>Negara</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_negara'];?>
</td>
                      </tr>
                      <tr>
                        <td>Kota</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_kota'];?>
</td>
                      </tr>
                       <tr>
                        <td>Kode Pos</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['kode_pos'];?>
</td>
                      </tr>
                       <tr>
                        <td>Telepon</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['telepon'];?>
</td>
                      </tr>
                       <tr>
                        <td>Fax</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['fax'];?>
</td>
                      </tr>
                      <tr>
                        <td>No. KTP</td>
                        <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['no_ktp'];?>
</td>
                      </tr>
                        
                     
                    </tbody>
                  </table>
                  
                
                </div>
              </div>
            </div>
                 
            
          </div>
        </div>
      </div>
    </div>

<div id="modal-detail-anggota-footer" style="display:none;">
  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
<?php } ?>
 <?php }} ?>

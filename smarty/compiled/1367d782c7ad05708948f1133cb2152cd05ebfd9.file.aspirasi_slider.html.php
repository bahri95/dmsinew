<?php /* Smarty version Smarty-3.1.17, created on 2016-09-05 21:01:30
         compiled from "application/views/web/home/aspirasi_slider.html" */ ?>
<?php /*%%SmartyHeaderCode:205302410457720c28ed2ec1-94206143%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1367d782c7ad05708948f1133cb2152cd05ebfd9' => 
    array (
      0 => 'application/views/web/home/aspirasi_slider.html',
      1 => 1472826708,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '205302410457720c28ed2ec1-94206143',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720c2900c619_16299238',
  'variables' => 
  array (
    'judul' => 0,
    'datamaxtahun' => 0,
    'result' => 0,
    'listaspirasi' => 0,
    'rs' => 0,
    'datagrafik' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720c2900c619_16299238')) {function content_57720c2900c619_16299238($_smarty_tpl) {?><div class="page-href" id="testimonials"></div><div class="f-primary-b b-title-b-hr f-title-b-hr"><?php echo $_smarty_tpl->tpl_vars['judul']->value['harga'];?>
 <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datamaxtahun']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['result']->value['maxtahun'];?>
<?php } ?></div><div class="row b-shortcode-example b-margin-top-standard">  <!-- <div class="col-md-3 col-sm-4">    <div class="b-shortcode-example bxslider bx-wrapper bx-viewport">      <?php if ($_smarty_tpl->tpl_vars['listaspirasi']->value!='') {?>      <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['listaspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>      <div class="b-mention-short-item">        <div class="b-mention-short-item__comment">          <div class="f-mention-short-item__comment_name f-primary-b font-judul"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
          </div>          <div class="b-mention-short-item__comment_text f-mention-short-item__comment_text font-content"><?php echo $_smarty_tpl->tpl_vars['rs']->value['isi_aspirasi'];?>
            <br/>            <?php if ($_smarty_tpl->tpl_vars['rs']->value['jawaban']!='') {?>            <i>Jawaban :            </i>            <br/>            <?php echo $_smarty_tpl->tpl_vars['rs']->value['jawaban'];?>
            <?php }?>          </div>        </div>        <div class="b-mention-short-item__user">          <div class="b-mention-short-item__user_img b-right">            <img class="fade-in-animate" data-retina src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['foto'];?>
" alt=""/>          </div>          <div class="b-mention-short-item__user_info f-right">            <div class="f-mention-short-item__user_name f-primary-b"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_pengirim'];?>
            </div>            <div class="f-mention-short-item__user_position"><?php echo $_smarty_tpl->tpl_vars['rs']->value['pekerjaan'];?>
            </div>          </div>        </div>      </div>      <?php } ?>      <?php }?>    </div>  </div> -->  <div class="col-md-12 col-sm-8">    <div class="box-body no-padding">      <div id="container" style="width:90%; height: 40%; margin: 0 auto;">      </div>      <table id="datatable" hidden="hidden">        <thead>          <tr>            <th>Bulan            </th>            <th>Domestik            </th>            <th>Ekspor            </th>          </tr>        </thead>        <tbody>          <?php if ($_smarty_tpl->tpl_vars['datagrafik']->value!='') {?>          <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafik']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>          <tr>            <th>              <?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
            </th>            <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='1') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>            </td>            <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='2') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>            </td>          </tr>          <?php } ?>          <?php }?>        </tbody>      </table>    </div>    <!-- /.box-body -->  </div></div><?php }} ?>

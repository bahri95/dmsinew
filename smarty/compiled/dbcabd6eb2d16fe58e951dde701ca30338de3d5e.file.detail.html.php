<?php /* Smarty version Smarty-3.1.17, created on 2016-08-18 06:48:04
         compiled from "application/views/web/foto/detail.html" */ ?>
<?php /*%%SmartyHeaderCode:28152302157720d8517f781-40091753%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dbcabd6eb2d16fe58e951dde701ca30338de3d5e' => 
    array (
      0 => 'application/views/web/foto/detail.html',
      1 => 1471344818,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28152302157720d8517f781-40091753',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720d851f9530_60991414',
  'variables' => 
  array (
    'nama_album' => 0,
    'nama' => 0,
    'foto_list' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720d851f9530_60991414')) {function content_57720d851f9530_60991414($_smarty_tpl) {?><section class="b-infoblock--without-border">
    <div class="container ">
    <?php if ($_smarty_tpl->tpl_vars['nama_album']->value!='') {?>
    <?php  $_smarty_tpl->tpl_vars['nama'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['nama']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['nama_album']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['nama']->key => $_smarty_tpl->tpl_vars['nama']->value) {
$_smarty_tpl->tpl_vars['nama']->_loop = true;
?>
    <h3 class="f-primary-b f-title-big"><?php echo $_smarty_tpl->tpl_vars['nama']->value['nama_album'];?>
</h3>
    <?php } ?>
    <?php }?>
<div class="j-filter-content">
          <div class="row row b-col-default-indent b-gallery--secondary j-masonry">
            <div class="masonry-gridSizer col-sm-6 col-md-4 col-lg-3"></div>
             <?php if ($_smarty_tpl->tpl_vars['foto_list']->value!='') {?>
            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['foto_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
            <div class="j-masonry-item col-sm-6 col-md-4 col-lg-3 j-filter-portrait">
                
                <div class="b-gallery-main-item view view-eighth">
                <img data-retina='' src='<?php echo $_smarty_tpl->tpl_vars['rs']->value['foto'];?>
'>
                <div class="b-item-hover-action f-center mask">
                <div class="b-item-hover-action__inner">
                <div class="b-item-hover-action__inner-btn_group b-default-top-indent">
                    <a data-animate="fadeInDown" href='<?php echo $_smarty_tpl->tpl_vars['rs']->value['foto'];?>
' class='b-btn f-btn b-btn-light f-btn-light fancybox info' rel='gallery' title='<?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_foto'];?>
'><i class='fa fa-arrows-alt'></i></a>
                    <div class="f-uppercase c-white f-title-small b-default-top-indent f-primary-b"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_foto'];?>
</div>
                </div>
                </div>
                </div>
                </div>
            </div>
            <?php } ?>
            <?php }?>
</div>
</div>
</div>
</section><?php }} ?>
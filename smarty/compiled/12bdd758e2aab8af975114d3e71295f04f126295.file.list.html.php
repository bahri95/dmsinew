<?php /* Smarty version Smarty-3.1.17, created on 2016-08-19 04:08:47
         compiled from "application/views/web/foto/list.html" */ ?>
<?php /*%%SmartyHeaderCode:99815548757720d803fbea8-35709006%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '12bdd758e2aab8af975114d3e71295f04f126295' => 
    array (
      0 => 'application/views/web/foto/list.html',
      1 => 1471344818,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99815548757720d803fbea8-35709006',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720d8046ca75_58601756',
  'variables' => 
  array (
    'album_list' => 0,
    'rs' => 0,
    'url_detail' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720d8046ca75_58601756')) {function content_57720d8046ca75_58601756($_smarty_tpl) {?><section class="b-infoblock--without-border">
    <div class="container ">

<div class="j-filter-content">
          <div class="row row b-col-default-indent b-gallery--secondary j-masonry">
            <div class="masonry-gridSizer col-sm-6 col-md-4 "></div>
             <?php if ($_smarty_tpl->tpl_vars['album_list']->value!='') {?>
            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['album_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
            <div class="j-masonry-item col-sm-6 col-md-4 j-filter-portrait">
             
                <div class="b-gallery-main-item view view-eighth">
                <img data-retina='' src='<?php echo $_smarty_tpl->tpl_vars['rs']->value['image_album'];?>
'>
                <div class="b-item-hover-action f-center mask">
                <div class="b-item-hover-action__inner">
                <div class="b-item-hover-action__inner-btn_group b-default-top-indent">
                    <a data-animate="fadeInDown" href='<?php echo $_smarty_tpl->tpl_vars['url_detail']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_album'];?>
' class='b-btn f-btn b-btn-light f-btn-light fancybox info' rel='gallery' title='<?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_album'];?>
'><i class='fa fa-arrows-alt'></i></a>
                   
                </div>
                </div>
                </div>
                </div>
                 <div class="b-app-with-img__item_text f-center b-app-with-img__border">
                                <div class="b-app-with-img__item_name f-app-with-img__item_name f-primary-b"><a href="<?php echo $_smarty_tpl->tpl_vars['url_detail']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_album'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_album'];?>
</a></div>
                               
                            </div>

            </div>
            <?php } ?>
            <?php }?>
</div>
</div>
</div>
</section><?php }} ?>

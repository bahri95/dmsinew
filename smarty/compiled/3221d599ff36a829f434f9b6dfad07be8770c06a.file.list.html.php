<?php /* Smarty version Smarty-3.1.17, created on 2016-09-05 21:53:29
         compiled from "application/views/web/video/list.html" */ ?>
<?php /*%%SmartyHeaderCode:198807368757720d6d954880-68192690%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3221d599ff36a829f434f9b6dfad07be8770c06a' => 
    array (
      0 => 'application/views/web/video/list.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '198807368757720d6d954880-68192690',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720d6da4ba86_47343081',
  'variables' => 
  array (
    'video_list' => 0,
    'rs' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720d6da4ba86_47343081')) {function content_57720d6da4ba86_47343081($_smarty_tpl) {?><div class="row j-masonry b-col-default-indent">  <div class="masonry-gridSizer col-xs-12 col-sm-6 col-md-4">  </div>  <!--start detail desc-->  <?php if ($_smarty_tpl->tpl_vars['video_list']->value!='') {?>  <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['video_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>  <div class="j-masonry-item col-md-4 col-sm-6 col-xs-12 f-center j-filter-graphic j-filter-illustration">    <div class="b-portfolio__content-item">      <div class="view view-eighth">        <div class="b-portfolio__content-item-img">           <img data-retina src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['video_image'];?>
" alt=""/>         </div>        <div class="b-portfolio__content-item-inner b-item-hover-action mask">          <div class="b-item-hover-action__inner">            <div class="b-item-hover-action__inner-btn_group">              <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_play'];?>
" class="b-btn f-btn b-btn-light f-btn-light fancybox info fancybox.iframe" title="<?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
">                <i class="fa fa-link">                </i>              </a>            </div>            <div class=" f-portfolio__content-item-inner-title f-primary-b"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_video'];?>
            </div>          </div>        </div>      </div>    </div>  </div>  <?php } ?>  <?php }?>  <!--end detail --></div><?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?><div class="b-pagination f-pagination">  <ul>    <?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>
  </ul></div><?php }?></div><?php }} ?>

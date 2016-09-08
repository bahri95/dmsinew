<?php /* Smarty version Smarty-3.1.17, created on 2016-09-05 21:59:01
         compiled from "application/views/web/sponsor/list.html" */ ?>
<?php /*%%SmartyHeaderCode:1837919840577216466e0279-92980847%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c2856c51fb348270668086561b61b59fbe079a09' => 
    array (
      0 => 'application/views/web/sponsor/list.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1837919840577216466e0279-92980847',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57721646739a97_48626510',
  'variables' => 
  array (
    'sponsor_list' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57721646739a97_48626510')) {function content_57721646739a97_48626510($_smarty_tpl) {?><section class="container b-welcome-box">  <div class="row">    <div class="col-md-offset-2 col-md-8">      <h1 class="is-global-title f-center">Sponsorship      </h1>    </div>  </div></section><section class="b-infoblock--without-border">  <div class="container ">    <div class="j-filter-content">      <div class="row row b-col-default-indent b-gallery--secondary j-masonry">        <div class="masonry-gridSizer col-sm-6 col-md-4 col-lg-3">        </div>        <?php if ($_smarty_tpl->tpl_vars['sponsor_list']->value!='') {?>        <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sponsor_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>        <div class="j-masonry-item col-sm-6 col-md-4 col-lg-3 j-filter-portrait">          <div class="b-gallery-main-item view view-eighth">            <img data-retina='' src='<?php echo $_smarty_tpl->tpl_vars['rs']->value['image_sponsor'];?>
' title="<?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_sponsor'];?>
">          </div>        </div>        <?php } ?>        <?php }?>      </div>    </div>  </div></section><?php }} ?>

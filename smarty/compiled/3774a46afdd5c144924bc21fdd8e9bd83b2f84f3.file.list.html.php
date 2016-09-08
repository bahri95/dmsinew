<?php /* Smarty version Smarty-3.1.17, created on 2016-09-06 11:07:41
         compiled from "application/views/web/bagan/list.html" */ ?>
<?php /*%%SmartyHeaderCode:577534253577340523abd75-44415846%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3774a46afdd5c144924bc21fdd8e9bd83b2f84f3' => 
    array (
      0 => 'application/views/web/bagan/list.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '577534253577340523abd75-44415846',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57734052456792_53418712',
  'variables' => 
  array (
    'bagan_list' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57734052456792_53418712')) {function content_57734052456792_53418712($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['bagan_list']->value!='') {?><?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bagan_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?><section class="b-portfolio-slider-box">  <div class="f-carousel-secondary b-portfolio__example-box f-some-examples-tertiary b-carousel-reset b-carousel-arr-square b-carousel-arr-square--big f-carousel-arr-square">    <div class="b-carousel-title f-carousel-title f-carousel-title__color f-primary-b b-diagonal-line-bg-light">      bagan : <?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_bagan'];?>
        <span class="b-blog-one-column__info_delimiter">      </span>      <strong> Tanggal Dibuat: <?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
       </strong>      <br/>    </div>    <br/>    <div class="col-md-9">      <div class="b-portfolio-slider-box__items">        <div class="b-slider-images j-slider-images">          <img class=""  data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
" alt="">        </div>      </div>    </div>  </div></section><?php } ?><?php }?><?php }} ?>

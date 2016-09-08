<?php /* Smarty version Smarty-3.1.17, created on 2016-07-27 11:46:30
         compiled from "application\views\web\bagan\list.html" */ ?>
<?php /*%%SmartyHeaderCode:23490579882f6eef4b5-86457248%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '03f853591c6142ec0c90c1a329ea92a82401e6a9' => 
    array (
      0 => 'application\\views\\web\\bagan\\list.html',
      1 => 1468557956,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '23490579882f6eef4b5-86457248',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'bagan_list' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_579882f708f9e7_40644226',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579882f708f9e7_40644226')) {function content_579882f708f9e7_40644226($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['bagan_list']->value!='') {?>
    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['bagan_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
 <section class="b-portfolio-slider-box">
        <div class="f-carousel-secondary b-portfolio__example-box f-some-examples-tertiary b-carousel-reset b-carousel-arr-square b-carousel-arr-square--big f-carousel-arr-square">
            <div class="b-carousel-title f-carousel-title f-carousel-title__color f-primary-b b-diagonal-line-bg-light">
               bagan : <?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_bagan'];?>
  <span class="b-blog-one-column__info_delimiter"></span>
               <strong> Tanggal Dibuat: <?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
 </strong>
               <br/>
            </div>
         
           <br/>
           <div class="col-md-9">
            <div class="b-portfolio-slider-box__items">
                <div class="b-slider-images j-slider-images">
                    <img class=""  data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
" alt="">
                    
                </div>
            </div>
           </div>
        </div>
    </section>
<?php } ?>
<?php }?><?php }} ?>

<?php /* Smarty version Smarty-3.1.17, created on 2016-07-18 11:50:21
         compiled from "application\views\web\program\list.html" */ ?>
<?php /*%%SmartyHeaderCode:32286578ca65d687f57-46183866%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9958323dd0ad4113a8f7350cc5c50ddda72b03ca' => 
    array (
      0 => 'application\\views\\web\\program\\list.html',
      1 => 1468557956,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '32286578ca65d687f57-46183866',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'program_list' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578ca65d7204f1_06201227',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578ca65d7204f1_06201227')) {function content_578ca65d7204f1_06201227($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['program_list']->value!='') {?>
    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['program_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
 <section class="b-portfolio-slider-box">
        <div class="f-carousel-secondary b-portfolio__example-box f-some-examples-tertiary b-carousel-reset b-carousel-arr-square b-carousel-arr-square--big f-carousel-arr-square">
            <div class="b-carousel-title f-carousel-title f-carousel-title__color f-primary-b b-diagonal-line-bg-light">
               Program : <?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_program'];?>
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

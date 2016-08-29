<?php /* Smarty version Smarty-3.1.17, created on 2016-08-29 09:13:37
         compiled from "application\views\web\home\sponsor_slider.html" */ ?>
<?php /*%%SmartyHeaderCode:1570457888d590aba90-64484995%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '807c3e7dd808a73bd2c6dbf6f4814e4ab394a4da' => 
    array (
      0 => 'application\\views\\web\\home\\sponsor_slider.html',
      1 => 1472454619,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1570457888d590aba90-64484995',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d590cae98_64559361',
  'variables' => 
  array (
    'listsponsor' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d590cae98_64559361')) {function content_57888d590cae98_64559361($_smarty_tpl) {?><section>  <div class="f-info-container">    <div class="container">      <div class="b-info-container__title f-info-container__title">        <!-- <i class="fa fa-twitter"></i><br>-->        <span class="f-b f-primary-b" style="color:#424242;">SPONSOR DMSI        </span>      </div>      <div class="b-carousel-reset b-carousel-arr-out b-carousel-small-arr f-carousel-small-arr b-remaining">        <div class="f-center b-logo-group j-logo-slider">          <?php if ($_smarty_tpl->tpl_vars['listsponsor']->value!='') {?>          <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['listsponsor']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>          <div class="b-logo-item">            <a href="#">              <img class="is-normal" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image_sponsor'];?>
" alt=""/>              <img class="is-hover" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image_sponsor'];?>
" alt=""/>            </a>          </div>          <?php } ?>          <?php }?>        </div>      </div>    </div>    </section><?php }} ?>

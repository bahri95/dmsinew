<?php /* Smarty version Smarty-3.1.17, created on 2016-07-15 10:18:06
         compiled from "application\views\webanggota\home\anggota_slider.html" */ ?>
<?php /*%%SmartyHeaderCode:2579657889c3e791be2-12975128%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8ba166eb37b1fe650c5d6356e0e9e950c4b46854' => 
    array (
      0 => 'application\\views\\webanggota\\home\\anggota_slider.html',
      1 => 1468557968,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2579657889c3e791be2-12975128',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'listasosiasi' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57889c3e7fb374_19772252',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57889c3e7fb374_19772252')) {function content_57889c3e7fb374_19772252($_smarty_tpl) {?><section>
<div class="b-info-container f-info-container">
        <div class="container">
            <div class="b-info-container__title f-info-container__title">
               <!-- <i class="fa fa-twitter"></i><br>-->
                <span class="f-b f-primary-b">ANGGOTA DMSI</span>
            </div>
            <div class="b-carousel-reset b-carousel-arr-out b-carousel-small-arr f-carousel-small-arr b-remaining">
    <div class="f-center b-logo-group j-logo-slider">
   
    <?php if ($_smarty_tpl->tpl_vars['listasosiasi']->value!='') {?>
    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['listasosiasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
        <div class="b-logo-item"><a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
">
    <img class="is-normal" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['logo_asosiasi'];?>
" height="100"  alt=""/>
    <img class="is-hover" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['logo_asosiasi'];?>
" height="100"  alt=""/>
</a></div>
	<?php } ?>
    <?php }?>

    </div>
       
       
        </div>
    </div>
</section>

<?php }} ?>

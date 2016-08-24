<?php /* Smarty version Smarty-3.1.17, created on 2016-08-17 08:59:42
         compiled from "application/views/web/base-layout/slider.html" */ ?>
<?php /*%%SmartyHeaderCode:78940570157720c28d64164-50742801%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '375e12841503a5d2816cf46ff5db3417e152386d' => 
    array (
      0 => 'application/views/web/base-layout/slider.html',
      1 => 1471359182,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '78940570157720c28d64164-50742801',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720c28d91299_96145869',
  'variables' => 
  array (
    'databanner' => 1,
    'rs' => 1,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720c28d91299_96145869')) {function content_57720c28d91299_96145869($_smarty_tpl) {?><div class="b-slidercontainer b-slider">

      <div class="j-fullscreenslider j-arr-hide">

          <ul>

              

              <?php echo '/*%%SmartyNocache:78940570157720c28d64164-50742801%%*/<?php if ($_smarty_tpl->tpl_vars[\'databanner\']->value!=\'\') {?>/*/%%SmartyNocache:78940570157720c28d64164-50742801%%*/';?>


              <?php echo '/*%%SmartyNocache:78940570157720c28d64164-50742801%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'databanner\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:78940570157720c28d64164-50742801%%*/';?>


              <li data-transition="" data-slotamount="17" >

                  <div class="tp-bannertimer"></div>

                  <img data-retina src="<?php echo '/*%%SmartyNocache:78940570157720c28d64164-50742801%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'banner\'];?>
/*/%%SmartyNocache:78940570157720c28d64164-50742801%%*/';?>
">

              </li>

              <?php echo '/*%%SmartyNocache:78940570157720c28d64164-50742801%%*/<?php } ?>/*/%%SmartyNocache:78940570157720c28d64164-50742801%%*/';?>


              <?php echo '/*%%SmartyNocache:78940570157720c28d64164-50742801%%*/<?php }?>/*/%%SmartyNocache:78940570157720c28d64164-50742801%%*/';?>


              

             

          </ul>

      </div>

  </div><?php }} ?>

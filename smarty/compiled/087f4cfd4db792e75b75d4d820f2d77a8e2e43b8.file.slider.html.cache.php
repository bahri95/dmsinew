<?php /* Smarty version Smarty-3.1.17, created on 2016-08-19 11:06:56
         compiled from "application\views\web\base-layout\slider.html" */ ?>
<?php /*%%SmartyHeaderCode:2947157888d587d3921-92877023%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '087f4cfd4db792e75b75d4d820f2d77a8e2e43b8' => 
    array (
      0 => 'application\\views\\web\\base-layout\\slider.html',
      1 => 1471594298,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2947157888d587d3921-92877023',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d58821b44_98158298',
  'variables' => 
  array (
    'databanner' => 1,
    'rs' => 1,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d58821b44_98158298')) {function content_57888d58821b44_98158298($_smarty_tpl) {?><div class="b-slidercontainer b-slider">

      <div class="j-fullscreenslider j-arr-hide">

          <ul>

              

              <?php echo '/*%%SmartyNocache:2947157888d587d3921-92877023%%*/<?php if ($_smarty_tpl->tpl_vars[\'databanner\']->value!=\'\') {?>/*/%%SmartyNocache:2947157888d587d3921-92877023%%*/';?>


              <?php echo '/*%%SmartyNocache:2947157888d587d3921-92877023%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'databanner\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:2947157888d587d3921-92877023%%*/';?>


              <li data-transition="" data-slotamount="17" >

                  <div class="tp-bannertimer"></div>

                  <img data-retina src="<?php echo '/*%%SmartyNocache:2947157888d587d3921-92877023%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'banner\'];?>
/*/%%SmartyNocache:2947157888d587d3921-92877023%%*/';?>
">

              </li>

              <?php echo '/*%%SmartyNocache:2947157888d587d3921-92877023%%*/<?php } ?>/*/%%SmartyNocache:2947157888d587d3921-92877023%%*/';?>


              <?php echo '/*%%SmartyNocache:2947157888d587d3921-92877023%%*/<?php }?>/*/%%SmartyNocache:2947157888d587d3921-92877023%%*/';?>


              

             

          </ul>

      </div>

  </div><?php }} ?>

<?php /* Smarty version Smarty-3.1.17, created on 2016-09-05 21:55:25
         compiled from "application/views/web/video/play.html" */ ?>
<?php /*%%SmartyHeaderCode:147832231057720d7196c0a9-75319857%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1a57fad5df22634be021f157cfd4f704f60ba05d' => 
    array (
      0 => 'application/views/web/video/play.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '147832231057720d7196c0a9-75319857',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57720d71a02a79_55407391',
  'variables' => 
  array (
    'video_play' => 1,
    'judul_video' => 1,
    'keterangan' => 1,
    'sumber' => 1,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57720d71a02a79_55407391')) {function content_57720d71a02a79_55407391($_smarty_tpl) {?><div class="row">  <div class="col-md-12">    <center>      <?php echo $_smarty_tpl->tpl_vars['video_play']->value;?>
      <br />      <span style="display:block;margin-top:10px;font-family:Arial, Helvetica, sans-serif;color:#FFFFFF;"><?php echo $_smarty_tpl->tpl_vars['judul_video']->value;?>
      </span>    </center>    <span style="display:block;margin-top:10px;padding:10px;font-family:Arial, Helvetica, sans-serif;font-size:1em;color:#FFFFFF;">      <?php if ($_smarty_tpl->tpl_vars['keterangan']->value!='') {?><?php echo $_smarty_tpl->tpl_vars['keterangan']->value;?>
      <br /><?php }?>      <?php if ($_smarty_tpl->tpl_vars['sumber']->value!='') {?>Sumber : <?php echo $_smarty_tpl->tpl_vars['sumber']->value;?>
<?php }?>    </span>  </div></div><?php }} ?>

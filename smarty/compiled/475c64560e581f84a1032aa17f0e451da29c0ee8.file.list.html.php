<?php /* Smarty version Smarty-3.1.17, created on 2016-08-30 12:09:00
         compiled from "application\views\web\regulasi\list.html" */ ?>
<?php /*%%SmartyHeaderCode:26749578c52df0e7657-07937002%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '475c64560e581f84a1032aa17f0e451da29c0ee8' => 
    array (
      0 => 'application\\views\\web\\regulasi\\list.html',
      1 => 1472454731,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26749578c52df0e7657-07937002',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578c52df279c33_24433545',
  'variables' => 
  array (
    'page_modul' => 0,
    'regulasi_list' => 0,
    'no' => 0,
    'rs' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578c52df279c33_24433545')) {function content_578c52df279c33_24433545($_smarty_tpl) {?><div class="col-md-9">  <div class="b-shortcode-example">    <!--start detail desc-->    <div class="b-article-box">      <div class="f-article_title f-primary-l b-title-b-hr"> <?php echo mb_strtoupper($_smarty_tpl->tpl_vars['page_modul']->value, 'UTF-8');?>
       </div>      <table class="b-table-primary f-table-primary f-center">        <tr>          <th width="5%">No          </th>          <th width="65%">Nama File          </th>          <th width="15%">Ukuran          </th>          <th width="15%">Download          </th>        </tr>        <?php if ($_smarty_tpl->tpl_vars['regulasi_list']->value!='') {?>        <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['regulasi_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>        <tr>          <td><?php echo $_smarty_tpl->tpl_vars['no']->value++;?>
          </td>          <td align="left">            <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['file_download'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
            </a>          </td>          <td><?php echo $_smarty_tpl->tpl_vars['rs']->value['ukuran'];?>
          </td>          <td>            <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['file_regulasi'];?>
" class="button-xs button-yellow">              <i class="fa fa-download">              </i>            </a>          </td>        </tr>        <?php } ?>        <?php }?>      </table>    </div>    <?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?>    <div class="b-pagination f-pagination">      <ul>        <?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>
      </ul>    </div>    <?php }?>   </div>  <!--end detail --></div><!--end col 9--><?php }} ?>

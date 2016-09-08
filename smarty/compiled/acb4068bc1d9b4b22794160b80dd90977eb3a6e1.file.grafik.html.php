<?php /* Smarty version Smarty-3.1.17, created on 2016-08-12 05:24:39
         compiled from "application\views\web\harga\grafik.html" */ ?>
<?php /*%%SmartyHeaderCode:22899579882fa576447-67050287%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'acb4068bc1d9b4b22794160b80dd90977eb3a6e1' => 
    array (
      0 => 'application\\views\\web\\harga\\grafik.html',
      1 => 1470700995,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '22899579882fa576447-67050287',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_579882fa639978_50223048',
  'variables' => 
  array (
    'datagrafik' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579882fa639978_50223048')) {function content_579882fa639978_50223048($_smarty_tpl) {?> <div class="col-md-9 col-sm-8">
           <div class="box-body no-padding">
                                                                           <div id="container" style="width:900px; height: 400px; margin: 0 auto"></div>

                                                                            <table id="datatable" hidden="hidden">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th>Bulan</th>
                                                                                        <th>Domestik</th>
                                                                                        <th>Ekspor</th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                               <?php if ($_smarty_tpl->tpl_vars['datagrafik']->value!='') {?>
                                                                                    <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafik']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                                                                                    <tr>
                                                                                        <th><?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
</th>
                                                                                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='1') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?></td>
                                                                                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='2') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?></td>
                                                                                    </tr>
                                                                                <?php } ?>
                                                                                <?php }?>
                                                                                </tbody>
                                                                            </table>
                                                                        </div><!-- /.box-body -->
</div>
<?php }} ?>

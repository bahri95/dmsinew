<?php /* Smarty version Smarty-3.1.17, created on 2016-09-13 04:54:01
         compiled from "application\views\private\harga\cpo_domestik.html" */ ?>
<?php /*%%SmartyHeaderCode:1946757d21e888316c1-41317399%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '99059d8f4bdefbc97130db8ada50acdd8a8d4c06' => 
    array (
      0 => 'application\\views\\private\\harga\\cpo_domestik.html',
      1 => 1473735191,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1946757d21e888316c1-41317399',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57d21e888681d4_12734106',
  'variables' => 
  array (
    'datacpodomestik' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d21e888681d4_12734106')) {function content_57d21e888681d4_12734106($_smarty_tpl) {?><table id="table_datagrid" class="table table-bordered table-striped"">
                                            <thead>
                                                <tr>
                                                <th width="10%">Tahun</th>
                                                <th width="5%" align="center">Januari</th>
                                                <th width="5%" align="center">Februari</th>
                                                <th width="5%" align="center">Maret</th>
                                                <th width="5%" align="center">April</th>
                                                <th width="5%" align="center">Mei</th>
                                                <th width="5%" align="center">Juni</th>
                                                <th width="5%" align="center">Juli</th>
                                                <th width="5%" align="center">Agustus</th>
                                                <th width="5%" align="center">September</th>
                                                <th width="5%" align="center">Oktober</th>
                                                <th width="5%" align="center">November</th>
                                                <th width="5%" align="center">Desember</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                              <?php if ($_smarty_tpl->tpl_vars['datacpodomestik']->value!='') {?>
                                              <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datacpodomestik']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>
                                            <tr>
                                                <td><?php echo $_smarty_tpl->tpl_vars['result']->value['tahun'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['januari'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['februari'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['maret'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['april'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['mei'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['juni'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['juli'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['agustus'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['september'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['oktober'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['november'];?>
</td>
                                               <td><?php echo $_smarty_tpl->tpl_vars['result']->value['desember'];?>
</td>
                                            </tr>
                                            <?php } ?>
                                            <?php }?>
                                            </tbody>
                                            <tfoot>
                                        </tfoot>
                                    </table><?php }} ?>

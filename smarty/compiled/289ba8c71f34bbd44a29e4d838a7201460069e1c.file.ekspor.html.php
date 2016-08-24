<?php /* Smarty version Smarty-3.1.17, created on 2016-06-29 15:46:40
         compiled from "application/views/private/harga/ekspor.html" */ ?>
<?php /*%%SmartyHeaderCode:162956181257738af0329fe9-06420979%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '289ba8c71f34bbd44a29e4d838a7201460069e1c' => 
    array (
      0 => 'application/views/private/harga/ekspor.html',
      1 => 1467081300,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '162956181257738af0329fe9-06420979',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'dataekspor' => 0,
    'result' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57738af037c912_51934245',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57738af037c912_51934245')) {function content_57738af037c912_51934245($_smarty_tpl) {?><table id="table_datagrid" class="table table-bordered table-striped"">
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
                                              <?php if ($_smarty_tpl->tpl_vars['dataekspor']->value!='') {?>
                                              <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['dataekspor']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
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

<?php /* Smarty version Smarty-3.1.17, created on 2016-09-14 06:12:39
         compiled from "application\views\web\harga\grafik.html" */ ?>
<?php /*%%SmartyHeaderCode:22899579882fa576447-67050287%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'acb4068bc1d9b4b22794160b80dd90977eb3a6e1' => 
    array (
      0 => 'application\\views\\web\\harga\\grafik.html',
      1 => 1473826358,
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
    'datagrafikdo' => 0,
    'result' => 0,
    'datagrafikdocpo' => 0,
    'datagrafikeks' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579882fa639978_50223048')) {function content_579882fa639978_50223048($_smarty_tpl) {?><div class="box">  <div class="nav-tabs-custom">    <ul class="nav nav-tabs">          <li>        <a href="#tab_7" data-toggle="tab">Tandan Buah SEGAR (TBS)        </a>      </li>       <li>        <a href="#tab_9" data-toggle="tab">CPO Domestik (KPB dan Astra)        </a>      </li>      <li>        <a href="#tab_8" data-toggle="tab">Referensi dari Pasar Global (CIF Rotterdam atau FOB Rotterdam)        </a>      </li>    </ul>    <div class="tab-content">                  <div class="tab-pane" id="tab_7">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container2" style="width:80%; height: 70%;">                  </div>                  <table id="datatable2" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                        <th>Kalimantan Barat                         </th>                        <th>Sumatera Utara                         </th>                        <th>Riau</th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikdo']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikdo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                        </th>                        <td>                        <?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='1') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?></td>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='2') {?>                       <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='3') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            <!-- /.col -->          </div>          <!-- /.row -->        </section>        <!-- /.content -->      </div>      <!--tab 7-->      <!-- tab 9-->       <div class="tab-pane" id="tab_9">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container4" style="width:80%; height: 70%;">                  </div>                  <table id="datatable4" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                        <th>CPO Domestik (KPB dan Astra)                        </th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikdocpo']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikdocpo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                        </th>                        <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            <!-- /.col -->          </div>          <!-- /.row -->        </section>        <!-- /.content -->      </div>      <!--tab 9-->      <div class="tab-pane" id="tab_8">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container3" style="width:80%; height: 70%;">                  </div>                  <table id="datatable3" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                         <th>CPO</th>                        <th>Soybean Oil</th>                        <th>Rapeseed Oil</th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikeks']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikeks']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                        </th>                        <td>                        <?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='4') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?></td>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='5') {?>                       <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='6') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?>                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            </div>            </section>            </div>            </div>            </div><?php }} ?>

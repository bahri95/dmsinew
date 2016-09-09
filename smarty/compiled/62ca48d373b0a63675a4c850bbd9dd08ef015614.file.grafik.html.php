<?php /* Smarty version Smarty-3.1.17, created on 2016-09-09 11:26:31
         compiled from "application\views\private\harga\grafik.html" */ ?>
<?php /*%%SmartyHeaderCode:11101578ded866d4302-86610519%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '62ca48d373b0a63675a4c850bbd9dd08ef015614' => 
    array (
      0 => 'application\\views\\private\\harga\\grafik.html',
      1 => 1473413154,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11101578ded866d4302-86610519',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578ded8679b6b9_79435551',
  'variables' => 
  array (
    'datamaxtahun' => 0,
    'result' => 0,
    'url_add' => 0,
    'datagrafikdo' => 0,
    'datagrafikdocpo' => 0,
    'datagrafikeks' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578ded8679b6b9_79435551')) {function content_578ded8679b6b9_79435551($_smarty_tpl) {?><div class="box">  <div class="box-header">    <?php if ($_smarty_tpl->tpl_vars['datamaxtahun']->value!='') {?>    <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datamaxtahun']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>    <h3 class="box-title">Grafik Harga Tahun <?php echo $_smarty_tpl->tpl_vars['result']->value['maxtahun'];?>
    </h3>    <?php } ?>    <?php }?>    <div class="box-tools">      <div class="btn-group pull-right">        <a href="<?php echo $_smarty_tpl->tpl_vars['url_add']->value;?>
" title="Tambah Data" class="btn bg-olive btn-flat">          <i class='fa fa-plus'>          </i> Tambah Data        </a>      </div>    </div>  </div>  <div class="nav-tabs-custom">    <ul class="nav nav-tabs">          <li>        <a href="#tab_7" data-toggle="tab">Tandan Buah SEGAR (TBS)        </a>      </li>       <li>        <a href="#tab_9" data-toggle="tab">CPO Domestik (KPB dan Astra)        </a>      </li>      <li>        <a href="#tab_8" data-toggle="tab">Referensi dari Pasar Global (CIF Rotterdam atau FOB Rotterdam)        </a>      </li>    </ul>    <div class="tab-content">      <!-- <form method="post"><div class="form-group"><label for="user_name_lama">Tahun *</label><input type="text" name="tahun" value="" id="tahun" onchange="submit()" class="form-control" size="10" maxlength="10" style="width:150px;" /></div></form> -->            <div class="tab-pane" id="tab_7">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container2" style="width:1000px; height: 400px; margin: 0 auto">                  </div>                  <table id="datatable2" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                        <th>Kalimantan Barat                         </th>                        <th>Sumatera Utara                         </th>                        <th>Riau</th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikdo']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikdo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['id_bulan'];?>
                        </th>                        <td>                        <?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='1') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?></td>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='2') {?>                       <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='3') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            <!-- /.col -->          </div>          <!-- /.row -->        </section>        <!-- /.content -->      </div>      <!--tab 7-->      <!-- tab 9-->       <div class="tab-pane" id="tab_9">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container4" style="width:1000px; height:400px;">                  </div>                  <table id="datatable4" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                        <th>CPO Domestik (KPB dan Astra)                        </th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikdocpo']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikdocpo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['id_bulan'];?>
                        </th>                        <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            <!-- /.col -->          </div>          <!-- /.row -->        </section>        <!-- /.content -->      </div>      <!--tab 9-->      <div class="tab-pane" id="tab_8">        <section class="content">          <!-- Small boxes (Stat box) -->          <div class="row">            <div class="col-md-12">              <div class="box box-warning">                <div class="box-body no-padding">                  <div id="container3" style="width:1000px; height:400px;">                  </div>                  <table id="datatable3" hidden="hidden">                    <thead>                      <tr>                        <th>Bulan                        </th>                         <th>CPO</th>                        <th>Soybean Oil</th>                        <th>Rapeseed Oil</th>                      </tr>                    </thead>                    <tbody>                      <?php if ($_smarty_tpl->tpl_vars['datagrafikeks']->value!='') {?>                      <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikeks']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                      <tr>                        <th>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['id_bulan'];?>
                        </th>                        <td>                        <?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='4') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?></td>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='5') {?>                       <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?>                        </td>                        <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_sub_katharga']=='6') {?>                        <?php echo $_smarty_tpl->tpl_vars['result']->value['harga_dolar'];?>
<?php }?>                        </td>                      </tr>                      <?php } ?>                      <?php }?>                    </tbody>                  </table>                </div>                <!-- /.box-body -->              </div>              <!-- /.box -->            </div>            <!-- /.col -->          </div>          <!-- /.row -->        </section>        <!-- /.content -->      </div>      <!--tab 8-->    </div>    <!--tab content -->  </div></div><!-- /.box-body --><?php }} ?>

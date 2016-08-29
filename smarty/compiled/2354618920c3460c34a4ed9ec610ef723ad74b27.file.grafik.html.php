<?php /* Smarty version Smarty-3.1.17, created on 2016-08-29 09:13:58
         compiled from "application\views\private\dashboard\grafik.html" */ ?>
<?php /*%%SmartyHeaderCode:1262157888d7db98ed5-88640668%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2354618920c3460c34a4ed9ec610ef723ad74b27' => 
    array (
      0 => 'application\\views\\private\\dashboard\\grafik.html',
      1 => 1472451802,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1262157888d7db98ed5-88640668',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d7dc60284_08097356',
  'variables' => 
  array (
    'url_private' => 0,
    'total_foto' => 0,
    'total_album' => 0,
    'total_video' => 0,
    'url_foto' => 0,
    'url_video' => 0,
    'total_informasi' => 0,
    'total_opini' => 0,
    'total_sesebi' => 0,
    'url_informasi' => 0,
    'url_opini' => 0,
    'url_sesebi' => 0,
    'berita' => 0,
    'event' => 0,
    'url_berita' => 0,
    'url_event' => 0,
    'total_aspirasi_baru' => 0,
    'total_aspirasi_ver' => 0,
    'total_aspirasi_jaw' => 0,
    'url_aspirasi' => 0,
    'url_aspirasi_ver' => 0,
    'url_aspirasi_jaw' => 0,
    'datamaxtahun' => 0,
    'result' => 0,
    'datagrafik' => 0,
    'datagrafikdo' => 0,
    'datagrafikeks' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d7dc60284_08097356')) {function content_57888d7dc60284_08097356($_smarty_tpl) {?><section class="content-header">  <h1>    Dashboard    <small>panel    </small>  </h1>  <ol class="breadcrumb">    <li>      <a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
">        <i class="fa fa-dashboard">        </i> Home      </a>    </li>    <li class="active">Dashboard    </li>  </ol></section><!-- Main content --><section class="content">  <div class="row">    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-aqua">        <div class="inner">          <h5>            <table>              <tr>                <td>Foto &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['total_foto']->value;?>
 dari <?php echo $_smarty_tpl->tpl_vars['total_album']->value;?>
 Album                </td>              <tr/>              <tr>                <td>Video &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_video']->value;?>
                </td>              </tr>            </table>          </h5>          <p>            Foto dan Video          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-camera                    ">          </i>        </div>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_foto']->value;?>
" class="small-box-footer">          Foto           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_video']->value;?>
" class="small-box-footer">          Video           <i class="fa fa-arrow-circle-right">          </i>        </a>      </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-green">        <div class="inner">          <h5>            <table>              <tr>                <td>Informasi &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['total_informasi']->value;?>
                </td>              <tr/>              <tr>                <td>Opini &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_opini']->value;?>
                </td>              </tr>              <tr>                <td>Serba-serbi &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_sesebi']->value;?>
                </td>              </tr>            </table>          </h5>          <p>            Informasi, Opini dan Serba-Serbi          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-send                    ">          </i>        </div>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_informasi']->value;?>
" class="small-box-footer">          Informasi           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_opini']->value;?>
" class="small-box-footer">          Opini           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_sesebi']->value;?>
" class="small-box-footer">          Serba-serbi           <i class="fa fa-arrow-circle-right">          </i>        </a>      </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-yellow">        <div class="inner">          <h4>            <table>              <tr>                <td>Berita &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['berita']->value;?>
                </td>              <tr/>              <tr>                <td>Event &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['event']->value;?>
                </td>              </tr>            </table>          </h4>          <p>            Berita dan Event          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-bullhorn">          </i>        </div>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_berita']->value;?>
" class="small-box-footer">          Berita           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_event']->value;?>
" class="small-box-footer">          Event           <i class="fa fa-arrow-circle-right">          </i>        </a>      </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-red">        <div class="inner">          <h5>            <table>              <tr>                <td>Baru &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['total_aspirasi_baru']->value;?>
                </td>              <tr/>              <tr>                <td>Diverifikasi &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_aspirasi_ver']->value;?>
                </td>              </tr>              <tr>                <td>Dijawab &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_aspirasi_jaw']->value;?>
                </td>              </tr>            </table>          </h5>          <p>            Aspirasi Masyarakat          </p>        </div>        <div class="icon">          <i class="ion ion-star">          </i>        </div>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi']->value;?>
" class="small-box-footer">          Baru           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_ver']->value;?>
" class="small-box-footer">          Diverifikasi           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_jaw']->value;?>
" class="small-box-footer">          Dijawab           <i class="fa fa-arrow-circle-right">          </i>        </a>      </div>    </div>    <!-- ./col -->  </div>  <!-- /.row -->  <div class="row">    <div class="box">      <div class="box-header">        <?php if ($_smarty_tpl->tpl_vars['datamaxtahun']->value!='') {?>        <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datamaxtahun']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>        <h3 class="box-title">Grafik Harga Tahun <?php echo $_smarty_tpl->tpl_vars['result']->value['maxtahun'];?>
        </h3>        <?php } ?>        <?php }?>      </div>      <div class="nav-tabs-custom">        <ul class="nav nav-tabs">          <li class="active">            <a href="#tab_6" data-toggle="tab">Gabung            </a>          </li>          <li>            <a href="#tab_7" data-toggle="tab">Domestik            </a>          </li>          <li>            <a href="#tab_8" data-toggle="tab">Ekspor            </a>          </li>        </ul>        <div class="tab-content">          <!-- <form method="post"><div class="form-group"><label for="user_name_lama">Tahun *</label><input type="text" name="tahun" value="" id="tahun" onchange="submit()" class="form-control" size="10" maxlength="10" style="width:150px;" /></div></form> -->          <div class="tab-pane active" id="tab_6">            <section class="content">              <!-- Small boxes (Stat box) -->              <div class="row">                <div class="col-md-12">                  <div class="box box-warning">                    <div class="box-body no-padding">                      <div id="container" style="width:1000px; height: 400px; margin: 0 auto">                      </div>                      <table id="datatable" hidden="hidden">                        <thead>                          <tr>                            <th>Bulan                            </th>                            <th>Domestik                            </th>                            <th>Ekspor                            </th>                          </tr>                        </thead>                        <tbody>                          <?php if ($_smarty_tpl->tpl_vars['datagrafik']->value!='') {?>                          <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafik']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                          <tr>                            <th><?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                            </th>                            <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='1') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                            </td>                            <td><?php if ($_smarty_tpl->tpl_vars['result']->value['id_katharga']=='2') {?><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
<?php }?>                            </td>                          </tr>                          <?php } ?>                          <?php }?>                        </tbody>                      </table>                    </div>                    <!-- /.box-body -->                  </div>                  <!-- /.box -->                </div>                <!-- /.col -->              </div>              <!-- /.row -->            </section>            <!-- /.content -->          </div>          <!--tab 6-->          <div class="tab-pane" id="tab_7">            <section class="content">              <!-- Small boxes (Stat box) -->              <div class="row">                <div class="col-md-12">                  <div class="box box-warning">                    <div class="box-body no-padding">                      <div id="container2" style="width:1000px; height: 400px; margin: 0 auto">                      </div>                      <table id="datatable2" hidden="hidden">                        <thead>                          <tr>                            <th>Bulan                            </th>                            <th>Domestik                            </th>                          </tr>                        </thead>                        <tbody>                          <?php if ($_smarty_tpl->tpl_vars['datagrafikdo']->value!='') {?>                          <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikdo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                          <tr>                            <th><?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                            </th>                            <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
                            </td>                          </tr>                          <?php } ?>                          <?php }?>                        </tbody>                      </table>                    </div>                    <!-- /.box-body -->                  </div>                  <!-- /.box -->                </div>                <!-- /.col -->              </div>              <!-- /.row -->            </section>            <!-- /.content -->          </div>          <!--tab 7-->          <div class="tab-pane" id="tab_8">            <section class="content">              <!-- Small boxes (Stat box) -->              <div class="row">                <div class="col-md-12">                  <div class="box box-warning">                    <div class="box-body no-padding">                      <div id="container3" style="width:1000px; height:400px; margin: 0 auto">                      </div>                      <table id="datatable3" hidden="hidden">                        <thead>                          <tr>                            <th>Bulan                            </th>                            <th>Ekspor                            </th>                          </tr>                        </thead>                        <tbody>                          <?php if ($_smarty_tpl->tpl_vars['datagrafikeks']->value!='') {?>                          <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datagrafikeks']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                          <tr>                            <th><?php echo $_smarty_tpl->tpl_vars['result']->value['bulan'];?>
                            </th>                            <td><?php echo $_smarty_tpl->tpl_vars['result']->value['harga_rupiah'];?>
                            </td>                          </tr>                          <?php } ?>                          <?php }?>                        </tbody>                      </table>                    </div>                    <!-- /.box-body -->                  </div>                  <!-- /.box -->                </div>                <!-- /.col -->              </div>              <!-- /.row -->            </section>            <!-- /.content -->          </div>          <!--tab 8-->        </div>        <!--tab content -->      </div>    </div>    <!-- /.box-body -->  </div></section><!-- right col --></div><!-- /.row (main row) --></section><!-- /.content --><?php }} ?>

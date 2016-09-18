<?php /*%%SmartyHeaderCode:1343157888d7d407514-59546593%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '985f90fb749eb9e3b279a3440dc676881793741a' => 
    array (
      0 => 'application\\views\\private\\base-layout\\document.html',
      1 => 1473302624,
      2 => 'file',
    ),
    '127ed3120242d2eaac5b05ea9e656776b209f371' => 
    array (
      0 => 'application\\views\\private\\base-layout\\sidebar.html',
      1 => 1473302624,
      2 => 'file',
    ),
    'e960c1671e9afe606851daca6af6cab16f74e6ac' => 
    array (
      0 => 'application\\views\\private\\foto\\list_foto.html',
      1 => 1473912610,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1343157888d7d407514-59546593',
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57decddd02e1c5_14383567',
  'has_nocache_code' => true,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57decddd02e1c5_14383567')) {function content_57decddd02e1c5_14383567($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns="http://www.w3.org/1999/xhtml">  <head>    <meta charset="UTF-8">    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>    <meta name='description' content='Museum seni dan budaya di Indonesia' />    <meta name='keywords' content='museum, seni, budaya, indonesia, koleksi' />    <meta name='robots' content='index,follow' />    <title>Administrator Console    </title>    <link rel="stylesheet" type="text/css" href="http://localhost:82/dmsinew/themes/admin/load-style.css" />        <?php echo $_smarty_tpl->tpl_vars['LOADSTYLE']->value;?>
      </head>  <body class="skin-blue" onmousemove="change()">    <!-- header logo: style can be found in header.less -->    <header class="header">      <a href="#" class="logo">        <!-- Add the class icon to your logo image or logo icon to add the margining -->        Dewan Minyak Sawit Indonesia      </a>      <!-- Header Navbar: style can be found in header.less -->      <nav class="navbar navbar-static-top" role="navigation">        <!-- Sidebar toggle button-->        <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">          <span class="sr-only">Toggle navigation          </span>          <span class="icon-bar">          </span>          <span class="icon-bar">          </span>          <span class="icon-bar">          </span>        </a>        <div class="navbar-right">          <ul class="nav navbar-nav">            <!-- Messages: style can be found in dropdown.less-->            <!-- <li class="dropdown messages-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="fa fa-envelope-o">                </i>                                <?php if ($_smarty_tpl->tpl_vars['data_aspirasi']->value!='') {?>                <span class="label label-success">                  <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                  <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                  <?php } ?>                </span>                <?php }?>                              </a>              <ul class="dropdown-menu">                <li class="header">                   <?php if ($_smarty_tpl->tpl_vars['data_aspirasi']->value!='') {?>                  Ada<?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                  <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                  <?php } ?> Pesan Aspirasi yang belum diverifikasi                  <?php } else { ?>                  Tidak ada pesan                  <?php }?>                </li>                <li>                  <!-- inner menu: contains the actual data -->                 <!--  <ul class="menu">                                        <?php if ($_smarty_tpl->tpl_vars['data_aspirasi']->value!='') {?>                    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_aspirasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>                    <li> -->                      <!-- start message -->                     <!--  <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list']->value;?>
">                        <div class="pull-left">                          <img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/aspirasi/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_aspirasi'];?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['foto'];?>
" class="img-circle" alt="User Image"/>                        </div>                        <h4>                          <?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_pengirim'];?>
                          <small>                            <i class="fa fa-clock-o">                            </i>&nbsp;<?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
                          </small>                        </h4>                        <p><?php echo $_smarty_tpl->tpl_vars['rs']->value['isi_aspirasi'];?>
                        </p>                      </a>                    </li> -->                    <!-- end message -->                    <!-- <?php } ?>                    <?php }?>                                      </ul>                </li>                <li class="footer">                  <a href="http://localhost:82/dmsinew/index.php/private/aspirasi">Lihat Semua Pesan                  </a>                </li>              </ul>            </li>            anggota             <li class="dropdown messages-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="fa fa-user">                </i>                                <?php if ($_smarty_tpl->tpl_vars['data_anggota_baru']->value!='') {?>                <span class="label label-success">                  <?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                  <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                  <?php } ?>                </span>                <?php }?>                              </a>              <ul class="dropdown-menu">                <li class="header">                   <?php if ($_smarty_tpl->tpl_vars['data_anggota_baru']->value!='') {?>                  Ada<?php  $_smarty_tpl->tpl_vars['result'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['result']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['jumlah_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['result']->key => $_smarty_tpl->tpl_vars['result']->value) {
$_smarty_tpl->tpl_vars['result']->_loop = true;
?>                  <?php echo $_smarty_tpl->tpl_vars['result']->value['jumlah'];?>
                  <?php } ?> Permintaan Anggota baru yang belum disetujui                  <?php } else { ?>                  Tidak ada permintaan Anggota                  <?php }?>                </li>                <li> -->                  <!-- inner menu: contains the actual data -->                 <!--  <ul class="menu">                                        <?php if ($_smarty_tpl->tpl_vars['data_anggota_baru']->value!='') {?>                    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data_anggota_baru']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>                    <li> -->                      <!-- start message -->                      <!-- <a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_list']->value;?>
">                        <div class="pull-left">                          <img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/registrasi/<?php echo $_smarty_tpl->tpl_vars['rs']->value['id_registrasi'];?>
/<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
" class="img-circle" alt="User Image"/>                        </div>                        <h4>                          <?php echo $_smarty_tpl->tpl_vars['rs']->value['nama'];?>
                        </h4>                        <p><?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
                        </p>                      </a>                    </li> -->                    <!-- end message -->                    <!-- <?php } ?>                    <?php }?>                                      </ul>                </li>                <li class="footer">                  <a href="http://localhost:82/dmsinew/index.php/private/registrasi">                                  Lihat semua permintaan Anggota                                   </a>                </li>              </ul>            </li> -->            <!-- Notifications: style can be found in dropdown.less --> -->            <!-- User Account: style can be found in dropdown.less -->                        <li class="dropdown user user-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="glyphicon glyphicon-user">                </i>                <span><?php echo $_smarty_tpl->tpl_vars['user_account']->value['admin_name'];?>
                  <i class="caret">                  </i>                </span>              </a>              <ul class="dropdown-menu">                <!-- User image -->                <li class="user-header bg-light-blue">                  <img src="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['photo'];?>
" class="img-circle" alt="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['admin_name'];?>
" />                  <p>                    <?php echo $_smarty_tpl->tpl_vars['user_account']->value['admin_name'];?>
                    <br />                    <small><?php echo $_smarty_tpl->tpl_vars['user_account']->value['jabatan'];?>
                    </small>                    <!-- <small><?php echo $_smarty_tpl->tpl_vars['user_account']->value['auth_name'];?>
</small>-->                  </p>                </li>                <!-- Menu Body -->                <li class="user-body">                  <div class="col-xs-4 text-center">                    <a href="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['account_url'];?>
">Akun                    </a>                  </div>                  <div class="col-xs-4 text-center">                    <a href="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['profile_url'];?>
">Profil                    </a>                  </div>                  <div class="col-xs-4 text-center">                    <a href="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['profile_url'];?>
">Photo                    </a>                  </div>                </li>                <!-- Menu Footer-->                <li class="user-footer">                  <?php if ($_smarty_tpl->tpl_vars['user_account']->value['id_auth']=='5') {?>                  <div class="pull-left">                    <a href="<?php echo $_smarty_tpl->tpl_vars['user_account']->value['url_profil_museum'];?>
" class="btn btn-default btn-flat">Profil Museum                    </a>                  </div>                  <?php }?>                  <div class="pull-right">                    <a href="<?php echo $_smarty_tpl->tpl_vars['url_logout_admin_process']->value;?>
" class="btn btn-default btn-flat">Log Out                    </a>                  </div>                </li>              </ul>            </li>                      </ul>        </div>      </nav>    </header>    <div class="wrapper row-offcanvas row-offcanvas-left">      <!-- Left side column. contains the logo and sidebar -->            <aside class="left-side sidebar-offcanvas">        <?php echo $_smarty_tpl->getSubTemplate ("private/base-layout/sidebar.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
      </aside>            <!-- Right side column. Contains the navbar and content of the page -->            <aside class="right-side">        <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['template_content']->value).".html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
      </aside>      <!-- /.right-side -->          </div>    <!-- ./wrapper -->    <!-- javascript loaded -->        <?php echo $_smarty_tpl->tpl_vars['LOADJS']->value;?>
            <?php echo $_smarty_tpl->tpl_vars['LOADJSCRUD']->value;?>
        <!-- end of loaded javascript -->  </body>    <script>    var loadFile = function(event) {      var output = document.getElementById('output');      output.src = URL.createObjectURL(event.target.files[0]);    };    function change() {      var selectBox = document.getElementById("show");      var selected = selectBox.options[selectBox.selectedIndex].value;      if(selected === 'sementara'){        $('#label_tgl_mulai').show();        $('#label_tgl_akhir').show();        $('#tgl_mulai').show();        $('#tgl_akhir').show();      }      else{        $('#label_tgl_mulai').hide();        $('#label_tgl_akhir').hide();        $('#tgl_mulai').hide();        $('#tgl_akhir').hide();      }    }  </script>  </html><?php }} ?>

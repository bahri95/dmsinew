<?php /* Smarty version Smarty-3.1.17, created on 2016-08-29 09:13:57
         compiled from "application\views\private\base-layout\document.html" */ ?>
<?php /*%%SmartyHeaderCode:1343157888d7d407514-59546593%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '985f90fb749eb9e3b279a3440dc676881793741a' => 
    array (
      0 => 'application\\views\\private\\base-layout\\document.html',
      1 => 1472451548,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1343157888d7d407514-59546593',
  'function' => 
  array (
  ),
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d7d4da444_78019253',
  'variables' => 
  array (
    'site_description' => 0,
    'site_keyword' => 0,
    'site_title' => 0,
    'THEMESPATH' => 0,
    'LOADSTYLE' => 1,
    'data_aspirasi' => 1,
    'jumlah_aspirasi' => 1,
    'result' => 1,
    'url_aspirasi_list' => 0,
    'BASEURL' => 1,
    'rs' => 1,
    'data_anggota_baru' => 1,
    'jumlah_anggota_baru' => 1,
    'url_anggota_list' => 0,
    'user_account' => 1,
    'url_logout_admin_process' => 1,
    'LOADJS' => 1,
    'LOADJSCRUD' => 1,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d7d4da444_78019253')) {function content_57888d7d4da444_78019253($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns="http://www.w3.org/1999/xhtml">  <head>    <meta charset="UTF-8">    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>    <meta name='description' content='<?php echo $_smarty_tpl->tpl_vars['site_description']->value;?>
' />    <meta name='keywords' content='<?php echo $_smarty_tpl->tpl_vars['site_keyword']->value;?>
' />    <meta name='robots' content='index,follow' />    <title><?php echo $_smarty_tpl->tpl_vars['site_title']->value;?>
    </title>    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['THEMESPATH']->value;?>
" />        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'LOADSTYLE\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
      </head>  <body class="skin-blue" onmousemove="change()">    <!-- header logo: style can be found in header.less -->    <header class="header">      <a href="#" class="logo">        <!-- Add the class icon to your logo image or logo icon to add the margining -->        Dewan Minyak Sawit Indonesia      </a>      <!-- Header Navbar: style can be found in header.less -->      <nav class="navbar navbar-static-top" role="navigation">        <!-- Sidebar toggle button-->        <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">          <span class="sr-only">Toggle navigation          </span>          <span class="icon-bar">          </span>          <span class="icon-bar">          </span>          <span class="icon-bar">          </span>        </a>        <div class="navbar-right">          <ul class="nav navbar-nav">            <!-- Messages: style can be found in dropdown.less-->            <li class="dropdown messages-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="fa fa-envelope-o">                </i>                                <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_aspirasi\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                <span class="label label-success">                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'result\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'result\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'jumlah_aspirasi\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'result\']->key => $_smarty_tpl->tpl_vars[\'result\']->value) {
$_smarty_tpl->tpl_vars[\'result\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'result\']->value[\'jumlah\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                </span>                <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                              </a>              <ul class="dropdown-menu">                <li class="header">                   <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_aspirasi\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  Ada<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'result\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'result\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'jumlah_aspirasi\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'result\']->key => $_smarty_tpl->tpl_vars[\'result\']->value) {
$_smarty_tpl->tpl_vars[\'result\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'result\']->value[\'jumlah\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
 Pesan Aspirasi yang belum diverifikasi                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } else { ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  Tidak ada pesan                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                </li>                <li>                  <!-- inner menu: contains the actual data -->                  <ul class="menu">                                        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_aspirasi\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'data_aspirasi\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <li>                      <!-- start message -->                      <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'url_aspirasi_list\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
">                        <div class="pull-left">                          <img src="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'BASEURL\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
doc/aspirasi/<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'id_aspirasi\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
/<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'foto\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" class="img-circle" alt="User Image"/>                        </div>                        <h4>                          <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'nama_pengirim\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                          <small>                            <i class="fa fa-clock-o">                            </i>&nbsp;<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'tanggal\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                          </small>                        </h4>                        <p><?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'isi_aspirasi\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                        </p>                      </a>                    </li>                    <!-- end message -->                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                                      </ul>                </li>                <li class="footer">                  <a href="<?php echo $_smarty_tpl->tpl_vars['url_aspirasi_list']->value;?>
">Lihat Semua Pesan                  </a>                </li>              </ul>            </li>            <!--anggota -->            <li class="dropdown messages-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="fa fa-user">                </i>                                <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_anggota_baru\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                <span class="label label-success">                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'result\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'result\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'jumlah_anggota_baru\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'result\']->key => $_smarty_tpl->tpl_vars[\'result\']->value) {
$_smarty_tpl->tpl_vars[\'result\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'result\']->value[\'jumlah\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                </span>                <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                              </a>              <ul class="dropdown-menu">                <li class="header">                   <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_anggota_baru\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  Ada<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'result\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'result\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'jumlah_anggota_baru\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'result\']->key => $_smarty_tpl->tpl_vars[\'result\']->value) {
$_smarty_tpl->tpl_vars[\'result\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'result\']->value[\'jumlah\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
 Permintaan Anggota baru yang belum disetujui                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } else { ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  Tidak ada permintaan Anggota                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                </li>                <li>                  <!-- inner menu: contains the actual data -->                  <ul class="menu">                                        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'data_anggota_baru\']->value!=\'\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'data_anggota_baru\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <li>                      <!-- start message -->                      <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'url_anggota_list\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
">                        <div class="pull-left">                          <img src="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'BASEURL\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
doc/registrasi/<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'id_registrasi\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
/<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'image\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" class="img-circle" alt="User Image"/>                        </div>                        <h4>                          <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'nama\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                        </h4>                        <p><?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'nama_asosiasi\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                        </p>                      </a>                    </li>                    <!-- end message -->                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php } ?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                                      </ul>                </li>                <li class="footer">                  <a href="<?php echo $_smarty_tpl->tpl_vars['url_anggota_list']->value;?>
">Lihat semua permintaan Anggota                  </a>                </li>              </ul>            </li>            <!-- Notifications: style can be found in dropdown.less -->            <!-- User Account: style can be found in dropdown.less -->                        <li class="dropdown user user-menu">              <a href="#" class="dropdown-toggle" data-toggle="dropdown">                <i class="glyphicon glyphicon-user">                </i>                <span><?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'admin_name\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <i class="caret">                  </i>                </span>              </a>              <ul class="dropdown-menu">                <!-- User image -->                <li class="user-header bg-light-blue">                  <img src="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'photo\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" class="img-circle" alt="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'admin_name\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" />                  <p>                    <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'admin_name\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    <br />                    <small><?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'jabatan\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                    </small>                    <!-- <small><?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'auth_name\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
</small>-->                  </p>                </li>                <!-- Menu Body -->                <li class="user-body">                  <div class="col-xs-4 text-center">                    <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'account_url\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
">Akun                    </a>                  </div>                  <div class="col-xs-4 text-center">                    <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'profile_url\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
">Profil                    </a>                  </div>                  <div class="col-xs-4 text-center">                    <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'profile_url\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
">Photo                    </a>                  </div>                </li>                <!-- Menu Footer-->                <li class="user-footer">                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php if ($_smarty_tpl->tpl_vars[\'user_account\']->value[\'id_auth\']==\'5\') {?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <div class="pull-left">                    <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'user_account\']->value[\'url_profil_museum\'];?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" class="btn btn-default btn-flat">Profil Museum                    </a>                  </div>                  <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php }?>/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
                  <div class="pull-right">                    <a href="<?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'url_logout_admin_process\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
" class="btn btn-default btn-flat">Log Out                    </a>                  </div>                </li>              </ul>            </li>                      </ul>        </div>      </nav>    </header>    <div class="wrapper row-offcanvas row-offcanvas-left">      <!-- Left side column. contains the logo and sidebar -->            <aside class="left-side sidebar-offcanvas">        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->getSubTemplate ("private/base-layout/sidebar.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
      </aside>            <!-- Right side column. Contains the navbar and content of the page -->            <aside class="right-side">        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars[\'template_content\']->value).".html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
      </aside>      <!-- /.right-side -->          </div>    <!-- ./wrapper -->    <!-- javascript loaded -->        <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'LOADJS\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
            <?php echo '/*%%SmartyNocache:1343157888d7d407514-59546593%%*/<?php echo $_smarty_tpl->tpl_vars[\'LOADJSCRUD\']->value;?>
/*/%%SmartyNocache:1343157888d7d407514-59546593%%*/';?>
        <!-- end of loaded javascript -->  </body>    <script>    var loadFile = function(event) {      var output = document.getElementById('output');      output.src = URL.createObjectURL(event.target.files[0]);    };    function change() {      var selectBox = document.getElementById("show");      var selected = selectBox.options[selectBox.selectedIndex].value;      if(selected === 'sementara'){        $('#label_tgl_mulai').show();        $('#label_tgl_akhir').show();        $('#tgl_mulai').show();        $('#tgl_akhir').show();      }      else{        $('#label_tgl_mulai').hide();        $('#label_tgl_akhir').hide();        $('#tgl_mulai').hide();        $('#tgl_akhir').hide();      }    }  </script>  </html><?php }} ?>

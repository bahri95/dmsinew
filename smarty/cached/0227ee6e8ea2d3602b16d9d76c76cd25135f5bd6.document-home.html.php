<?php /*%%SmartyHeaderCode:213662233457720c28bd53d8-19211279%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0227ee6e8ea2d3602b16d9d76c76cd25135f5bd6' => 
    array (
      0 => 'application/views/web/base-layout/document-home.html',
      1 => 1472809882,
      2 => 'file',
    ),
    '54249d7a4b0417223ad09e4f3f43c3674d08e64e' => 
    array (
      0 => 'application/views/web/base-layout/sound.html',
      1 => 1472809882,
      2 => 'file',
    ),
    '3e4aa7eda89dba18595211cb0db30972a746c8fe' => 
    array (
      0 => 'application/views/web/base-layout/header.html',
      1 => 1473150046,
      2 => 'file',
    ),
    '375e12841503a5d2816cf46ff5db3417e152386d' => 
    array (
      0 => 'application/views/web/base-layout/slider.html',
      1 => 1473080474,
      2 => 'file',
    ),
    '77a1eda6cc84734346ce9ac641b1f771621654b2' => 
    array (
      0 => 'application/views/web/base-layout/footer.html',
      1 => 1472836434,
      2 => 'file',
    ),
    'f89ff0d94e2e4e28cbde450358002fadc8a6c907' => 
    array (
      0 => 'application/views/web/home/homecontent.html',
      1 => 1473076398,
      2 => 'file',
    ),
    'ccc8b5eec8e072c9fcdf45f0af10877a6823c3d9' => 
    array (
      0 => 'application/views/web/home/anggota_slider.html',
      1 => 1472809882,
      2 => 'file',
    ),
    '1367d782c7ad05708948f1133cb2152cd05ebfd9' => 
    array (
      0 => 'application/views/web/home/aspirasi_slider.html',
      1 => 1472826708,
      2 => 'file',
    ),
    '042745c9cb17218b70b42d49d5999fd34e247558' => 
    array (
      0 => 'application/views/web/home/sponsor_slider.html',
      1 => 1472809882,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '213662233457720c28bd53d8-19211279',
  'cache_lifetime' => 3600,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57d0c382ea97a0_74308149',
  'has_nocache_code' => true,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57d0c382ea97a0_74308149')) {function content_57d0c382ea97a0_74308149($_smarty_tpl) {?><!DOCTYPE html><html>  <head>    <meta charset="utf-8">    <title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
    </title>    <link rel="shortcut icon" href="http://dmsi.or.id/doc/favicon.ico">    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">    <link rel="stylesheet" type="text/css" href="http://dmsi.or.id/themes/default/load-style.css" />      </head>  <body>    <div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;">    </div>     <!--removed by integration-->    <div class="col-md-2">  <div class="b-audio-player">    <div id="jquery_jplayer_1" class="jp-jplayer">    </div>    <div id="jp_container_1" class="jp-audio">      <div class="jp-type-playlist">        <div class="jp-gui jp-interface b-audio-player__content">          <ul class="jp-controls b-audio-player__content_nav f-audio-player__content_nav">            <li class="b-audio-player__content_nav_prev">              <a href="javascript:;" class="jp-previous " tabindex="1">                <i class="fa fa-backward">                </i>              </a>            </li>            <li class="b-audio-player__content_nav_play">              <a href="javascript:;" class="jp-play " tabindex="1">                <i class="fa fa-play">                </i>              </a>              <a href="javascript:;" class="jp-pause" tabindex="1">                <i class="fa fa-pause">                </i>              </a>            </li>            <li class="b-audio-player__content_nav_next">              <a href="javascript:;" class="jp-next " tabindex="1">                <i class="fa fa-forward">                </i>              </a>            </li>          </ul>          <div class="b-audio-player__content_inner f-audio-player__content_inner">            <div class="jp-time-holder b-audio-player__time f-audio-player__time">              <div class="jp-current-time">              </div>            </div>            <div class="jp-time-holder b-audio-player__full-time">              <div class="jp-duration">              </div>            </div>            <div class="jp-progress b-audio-player__progress-bar_box">              <div class="b-audio-player__progress-bar_container">                <div class="jp-seek-bar b-audio-player__progress-bar">                  <div class="jp-play-bar b-audio-player__progress-bar_progress">                    <div class="b-audio-player__progress-bar_progress_btn">                    </div>                  </div>                </div>              </div>            </div>          </div>        </div>        <div class="jp-playlist">          <ul>            <li>            </li>          </ul>        </div>      </div>    </div>  </div></div>    <header>
  <div class="b-top-options-panel">
    <div class="container">
      <div class="b-option-contacts f-option-contacts">
        <a href="#">
          <i class="fa fa-envelope-o">
          </i> ipob@dmsi.or.id / dm.sawit@gmail.com
        </a>
        <a href="#">
          <i class="fa fa-phone">
          </i> +62 21 29625788 
        </a>
        <a href="#">
          <i class="fa fa-fax">
          </i> +62 21 29625789
        </a>
      </div>
      <div class="b-right b-header-ico-group f-header-ico-group b-right"> 
        <span class="b-header__search-box"> 
          <i class="fa fa-search">
          </i>
          <form method="post" action="http://dmsi.or.id/index.php/public/pencarian/index" name="form-search"> 
            <input type="text" name="keyword" value="" placeholder="Masukan kata pencarian"/>
          </form>
        </span> 
      </div>
      <div class="b-right">
        <div class="b-option-contacts f-primary-b">
          <a href="http://dmsi.or.id/index.php/public/lang/id" title="Indonesia">
            <img src="http://dmsi.or.id/doc/lang/indo.png" width="20">
          </a>  &nbsp;&nbsp;
          <a href="http://dmsi.or.id/index.php/public/lang/en" title="English">
            <img src="http://dmsi.or.id/doc/lang/eng.png" width="20">
          </a>
        </div>  
      </div>
      <span class="b-header__social-box b-header__social-box--no-fon ">
        
        <?php if ($_smarty_tpl->tpl_vars['datasosmed']->value!='') {?>
        <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datasosmed']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
        <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['link'];?>
">
          <i class="<?php echo $_smarty_tpl->tpl_vars['rs']->value['logo'];?>
">
          </i>
        </a>
        <?php } ?>
        <?php }?>
        
      </span>
      <!-- <div class="b-option-contacts f-option-contacts">
        <a href="http://dmsi.or.id/index.php/public/registrasi">
          <i class="fa fa-user">
          </i>&nbsp;Registrasi
        </a>
      </div>  --> 
    </div>
  </div>
  </div>
<div class="container b-header__box b-relative">
  <a href="/" class="b-left b-logo">
    <img class="color-theme" data-retina src="http://dmsi.or.id/themes/default/img/logo_dmsi.png" alt="Logo DMSI" style="margin-left:-50px;" />
  </a>
  <div class="b-header-r b-right">
    <div class="b-top-nav-show-slide f-top-nav-show-slide b-right j-top-nav-show-slide">
      <i class="fa fa-align-justify">
      </i>
    </div>
    <nav class="b-top-nav f-top-nav b-left j-top-nav">
      <ul class="b-top-nav__1level_wrap">
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='home'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>
          
          <a href="http://dmsi.or.id/index.php/public/home">
            <i class="fa fa-home b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['home'];?>

            <span class="b-ico-dropdown">
              <i class="fa fa-arrow-circle-down">
              </i>
            </span>
          </a>
        </li>
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='profil'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='beritadmsi'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='kegiatandmsi') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>
          
          <a href="#">
            <i class="fa fa-folder-open b-menu-1level-ico">
            </i>DMSI
            <span class="b-ico-dropdown">
              <i class="fa fa-arrow-circle-down">
              </i>
            </span>
          </a>
          <div class="b-top-nav__dropdomn">
            <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title">DMSI
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/profil">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['tentang_dmsi'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/profil/detail/3/visi">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['visi'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/beritadmsi">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['berita_dmsi'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/kegiatandmsi">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['event_dmsi'];?>

                </a>
              </li>
              <!--<li class="b-top-nav__2level f-top-nav__2level f-primary"><a href="http://dmsi.or.id/index.php/public/pengumuman"><i class="fa fa-angle-right"></i>Pengumuman</a></li>-->
            </ul>
          </div>
        </li>
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='asosiasi'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='beritaanggota'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='kegiatananggota') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>
          
          <a href="#">
            <i class="fa fa-picture-o b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['anggota_dmsi'];?>
 
            <span class="b-ico-dropdown">
              <i class="fa fa-arrow-circle-down">
              </i>
            </span>
          </a>
          <div class="b-top-nav__dropdomn">
            <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo $_smarty_tpl->tpl_vars['menu']->value['anggota_dmsi'];?>

              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/asosiasi">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['profil_anggota'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/beritaanggota">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['berita_anggota'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/kegiatananggota">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['event_anggota'];?>

                </a>
              </li>
            </ul>
          </div>
        </li>
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='informasi') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b  putih">
          <?php }?>
          
          <a href="#">
            <i class="fa fa-code b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['informasi'];?>
 
            <span class="b-ico-dropdown">
              <i class="fa fa-arrow-circle-down">
              </i>
            </span>
          </a>
          <div class="b-top-nav__dropdomn">
            <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title" ><?php echo $_smarty_tpl->tpl_vars['menu']->value['informasi'];?>

              </li>
              
              <?php if ($_smarty_tpl->tpl_vars['act_lang']->value=='en') {?>
              <?php if ($_smarty_tpl->tpl_vars['informasifooter']->value!='') {?>
              <ul class="b-list-markers f-list-markers">
                <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['informasifooter']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
                <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu" > 
                  <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
">
                    <i class="fa fa-angle-right">
                    </i> <?php echo $_smarty_tpl->tpl_vars['rs']->value['kategori_english'];?>

                  </a>
                </li>
                <?php } ?>
              </ul>
              <?php }?>
              <?php } else { ?>
              <?php if ($_smarty_tpl->tpl_vars['informasifooter']->value!='') {?>
              <ul class="b-list-markers f-list-markers">
                <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['informasifooter']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
                <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu"> 
                  <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
">
                    <i class="fa fa-angle-right">
                    </i> <?php echo $_smarty_tpl->tpl_vars['rs']->value['kategori'];?>

                  </a>
                </li>
                <?php } ?>
              </ul>
              <?php }?>
              <?php }?>
              
            </ul>
            <!-- <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo $_smarty_tpl->tpl_vars['menu']->value['wawasan'];?>

              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/opini"  onClick="return true">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['opini'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/sesebi"  onClick="return true">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['sesebi'];?>

                </a>
              </li>
            </ul>
            <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo $_smarty_tpl->tpl_vars['menu']->value['infografis'];?>

              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/program" onClick="return true">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['program'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/bagan" onClick="return true">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['bagan'];?>

                </a>
              </li>
            </ul> -->
            
          </div>
        </li>
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='harga') {?>
            <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
              <?php } else { ?>
            <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
              <?php }?>
               
              <a href="http://dmsi.or.id/index.php/public/harga">
                <i class="fa fa-inbox b-menu-1level-ico">
                </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['grafik'];?>

              </a> 
            </li>
        <!-- <li class="b-top-nav__1level f-top-nav__1level f-primary-b">
<a href="http://dmsi.or.id/index.php/public/home#petaperkebunan"><i class="fa fa-picture-o b-menu-1level-ico"></i>Peta Perkebunan</a>
</li> -->
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='foto'||$_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='video') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>
          
          <a href="#">
            <i class="fa fa-code b-menu-1level-ico">
            </i>Media
            <span class="b-ico-dropdown">
              <i class="fa fa-arrow-circle-down">
              </i>
            </span>
          </a>
          <div class="b-top-nav__dropdomn">
            <ul class="b-top-nav__2level_wrap">
              <li class="b-top-nav__2level_title f-top-nav__2level_title">Media
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/foto">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['foto'];?>

                </a>
              </li>
              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">
                <a href="http://dmsi.or.id/index.php/public/video">
                  <i class="fa fa-angle-right">
                  </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['video'];?>

                </a>
              </li>
            </ul>
          </div>
        </li>
        <!-- <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="http://dmsi.or.id/index.php/public/forum"><i class="fa fa-inbox b-menu-1level-ico"></i>Forum</a> </li> -->
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='regulasi') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>
           
          <a href="http://dmsi.or.id/index.php/public/regulasi">
            <i class="fa fa-inbox b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['regulasi'];?>

          </a> 
        </li>
        <!-- <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='download') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?> 
          <a href="http://dmsi.or.id/index.php/public/download">
            <i class="fa fa-code b-menu-1level-ico">
            </i>Download
          </a> 
        </li> -->
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='sponsor') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?>  
          <a href="http://dmsi.or.id/index.php/public/sponsor">
            <i class="fa fa-inbox b-menu-1level-ico">
            </i>Sponsorship
          </a> 
        </li> 
        <!-- <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='aspirasi') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?> 
          <a href="http://dmsi.or.id/index.php/public/aspirasi">
            <i class="fa fa-inbox b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['aspirasi'];?>

          </a> 
        </li>      -->
        <?php if ($_smarty_tpl->tpl_vars['menu']->value['menu_aktif']=='kontak') {?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">
          <?php } else { ?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">
          <?php }?> 
          <a href="http://dmsi.or.id/index.php/public/kontak">
            <i class="fa fa-list b-menu-1level-ico">
            </i><?php echo $_smarty_tpl->tpl_vars['menu']->value['kontak'];?>

          </a> 
        </li>   
      </ul>
    </nav>
  </div>
</div>
</header>
    <div class="j-menu-container">    </div>    <div class="l-main-container">      <div class="b-slidercontainer b-slider">
  <div class="j-fullscreenslider j-arr-hide">
    <ul>
      
      <?php if ($_smarty_tpl->tpl_vars['databanner']->value!='') {?>
      <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['databanner']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
      <li data-transition="" data-slotamount="17" >
        <div class="tp-bannertimer">
        </div>
        <img data-retina src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['banner'];?>
">
      </li>
      <?php } ?>
      <?php }?>
      
    </ul>
  </div>

</div>
       <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['template_content']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
     </div>    <footer>  <div class="b-footer-primary">    <div class="container">      <div class="row">        <div class="col-sm-8 col-xs-12 f-copyright b-copyright">Copyright © 2016 - Dewan Minyak Sawit Indonesia (DMSI)        </div>        <div class="col-sm-4 col-xs-12">          <div class="b-btn f-btn b-btn-default b-right b-footer__btn_up f-footer__btn_up j-footer__btn_up">            <i class="fa fa-chevron-up">            </i>          </div>          <nav class="b-bottom-nav f-bottom-nav b-right hidden-xs">            <ul>              <li class="is-active-bottom-nav">                <a href="http://dmsi.or.id/index.php/public/home">Home                </a>              </li>              <li>                <a href="http://dmsi.or.id/index.php/public/profil">                                    Tentang kami                                  </a>              </li>              <li>                <a href="http://dmsi.or.id/index.php/public/kontak">                                    Kontak Kami                                  </a>              </li>            </ul>          </nav>        </div>      </div>    </div>  </div>  <div class="container">    <div class="b-footer-secondary row">      <div class="col-md-3 col-sm-12 col-xs-12 f-center b-footer-logo-containter">        <a href="">          <img data-retina class="b-footer-logo color-theme" src="http://dmsi.or.id/themes/default/img/logo_dmsi_besar.png" alt="Logo"/>        </a>        <div class="b-footer-logo-text f-footer-logo-text">          <p>DMSI            <br />Dewan Minyak Sawit Indonesia          </p>          <div class="b-btn-group-hor f-btn-group-hor">                        <?php if ($_smarty_tpl->tpl_vars['datasosmed']->value!='') {?>            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['datasosmed']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>            <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['link'];?>
" target="_blank" class="b-btn-group-hor__item f-btn-group-hor__item">              <i class="<?php echo $_smarty_tpl->tpl_vars['rs']->value['logo'];?>
">              </i>            </a>            <?php } ?>            <?php }?>                      </div>        </div>      </div>      <div class="col-md-6 col-sm-12 col-xs-12">        <h4 class="f-primary-b">                    Asosiasi Anggota DMSI                  </h4>        <div class="b-blog-short-post row">                    <?php if ($_smarty_tpl->tpl_vars['asosiasifooter']->value!='') {?>          <ul class="b-list-markers f-list-markers">            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['asosiasifooter']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>            <li >               <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" >                <i class="fa fa-hand-o-right b-list-markers__ico f-list-markers__ico">                </i> <?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
              </a>            </li>            <?php } ?>          </ul>          <?php }?>                  </div>      </div>      <div class="col-md-3 col-sm-12 col-xs-12 ">        <h4 class="f-primary-b">                    Info Kontak                  </h4>        <div class="b-contacts-short-item-group">                    <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">            <div class="b-contacts-short-item__icon f-contacts-short-item__icon f-contacts-short-item__icon_lg b-left">              <i class="fa fa-map-marker">              </i>            </div>            <div class="b-remaining f-contacts-short-item__text">              <?php echo nl2br($_smarty_tpl->tpl_vars['kontakinfo']->value['alamat']);?>
            </div>          </div>          <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">            <div class="b-contacts-short-item__icon f-contacts-short-item__icon b-left f-contacts-short-item__icon_md">              <i class="fa fa-phone">              </i>            </div>            <div class="b-remaining f-contacts-short-item__text f-contacts-short-item__text_phone">              <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['telp'];?>
            </div>          </div>          <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">            <div class="b-contacts-short-item__icon f-contacts-short-item__icon b-left f-contacts-short-item__icon_xs">              <i class="fa fa-envelope">              </i>            </div>            <div class="b-remaining f-contacts-short-item__text f-contacts-short-item__text_email">              <a href=""><?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['email'];?>
              </a>            </div>          </div>                  </div>      </div>    </div>  </div></footer>    <!-- javascript loaded -->    <script type="text/javascript" src="http://dmsi.or.id/js/front/jquery.cslider.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/breakpoints.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/scrollspy.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/bootstrap-progressbar/bootstrap-progressbar.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/bootstrap.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/masonry.pkgd.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/bxslider/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/flexslider/jquery.flexslider.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/smooth-scroll/SmoothScroll.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/jquery.carouFredSel-6.2.1-packed.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/rs-plugin/videojs/video.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/jqueryui/jquery-ui.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/sliders.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/ui.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/retina.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/animate-numbers.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/parallax-effect.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/settings.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/color-themes.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/j.placeholder.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/fancybox/jquery.mousewheel.pack.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/fancybox/jquery.fancybox.custom.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/user.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/timeline.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/fontawesome-markers.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/cookie.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/loader.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/scrollIt/scrollIt.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/modules/navigation-slide.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/custom.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/audioplayer/js/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/audioplayer/js/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/audioplayer.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/admin/plugins/daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/charts/highcharts.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/charts/modules/exporting.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/charts/modules/data.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/bootstrap-select.js"></script>
<script type="text/javascript" src="http://dmsi.or.id/js/front/bootstrap-select.js.map"></script>
    <!-- end of loaded javascript -->  </body></html><?php }} ?>

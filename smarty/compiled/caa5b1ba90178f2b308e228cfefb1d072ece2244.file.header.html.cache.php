<?php /* Smarty version Smarty-3.1.17, created on 2016-09-06 02:22:46
         compiled from "application\views\web\base-layout\header.html" */ ?>
<?php /*%%SmartyHeaderCode:172657888d5829f778-63496755%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'caa5b1ba90178f2b308e228cfefb1d072ece2244' => 
    array (
      0 => 'application\\views\\web\\base-layout\\header.html',
      1 => 1473121334,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '172657888d5829f778-63496755',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d585a4f20_66336996',
  'variables' => 
  array (
    'kontakinfo' => 0,
    'url_search_base' => 0,
    'keyword' => 0,
    'url_lang_id' => 0,
    'BASEURL' => 0,
    'url_lang_en' => 0,
    'datasosmed' => 1,
    'rs' => 1,
    'url_menu_registrasi' => 0,
    'menu' => 1,
    'homeurl' => 0,
    'url_menu_profil' => 0,
    'url_menu_profil_visi' => 0,
    'url_menu_berita_dmsi' => 0,
    'url_menu_kegiatan_dmsi' => 0,
    'url_menu_pengumuman' => 0,
    'url_menu_anggota' => 0,
    'url_menu_berita_anggota' => 0,
    'url_menu_kegiatan_anggota' => 0,
    'act_lang' => 1,
    'informasifooter' => 1,
    'url_menu_opini' => 0,
    'url_menu_sesebi' => 0,
    'url_menu_program' => 0,
    'url_menu_bagan' => 0,
    'url_menu_harga' => 0,
    'url_menu_foto' => 0,
    'url_menu_video' => 0,
    'url_menu_forum' => 0,
    'url_menu_regulasi' => 0,
    'url_menu_download' => 0,
    'url_menu_sponsor' => 0,
    'url_menu_aspirasi' => 0,
    'url_menu_kontak' => 0,
  ),
  'has_nocache_code' => true,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d585a4f20_66336996')) {function content_57888d585a4f20_66336996($_smarty_tpl) {?><header>  <div class="b-top-options-panel">    <div class="container">      <div class="b-option-contacts f-option-contacts">        <a href="#">          <i class="fa fa-envelope-o">          </i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['email'];?>
        </a>        <a href="#">          <i class="fa fa-phone">          </i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['telp'];?>
         </a>        <a href="#">          <i class="fa fa-fax">          </i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['telp'];?>
        </a>      </div>      <div class="b-right b-header-ico-group f-header-ico-group b-right">         <span class="b-header__search-box">           <i class="fa fa-search">          </i>          <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['url_search_base']->value;?>
" name="form-search">             <input type="text" name="keyword" value="<?php echo $_smarty_tpl->tpl_vars['keyword']->value;?>
" placeholder="Masukan kata pencarian"/>          </form>        </span>       </div>      <div class="b-right">        <div class="b-option-contacts f-primary-b">          <a href="<?php echo $_smarty_tpl->tpl_vars['url_lang_id']->value;?>
" title="Indonesia">            <img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/indo.png" width="20">          </a>  &nbsp;&nbsp;          <a href="<?php echo $_smarty_tpl->tpl_vars['url_lang_en']->value;?>
" title="English">            <img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/eng.png" width="20">          </a>        </div>        </div>      <span class="b-header__social-box b-header__social-box--no-fon ">                <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'datasosmed\']->value!=\'\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'datasosmed\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <a href="<?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'link\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
">          <i class="<?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'logo\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
">          </i>        </a>        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </span>      <!-- <div class="b-option-contacts f-option-contacts">        <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_registrasi']->value;?>
">          <i class="fa fa-user">          </i>&nbsp;Registrasi        </a>      </div>  -->     </div>  </div>  </div><div class="container b-header__box b-relative">  <a href="/" class="b-left b-logo">    <img class="color-theme" data-retina src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
themes/default/img/logo_dmsi.png" alt="Logo DMSI" style="margin-left:-50px;" />  </a>  <div class="b-header-r b-right">    <div class="b-top-nav-show-slide f-top-nav-show-slide b-right j-top-nav-show-slide">      <i class="fa fa-align-justify">      </i>    </div>    <nav class="b-top-nav f-top-nav b-left j-top-nav">      <ul class="b-top-nav__1level_wrap">        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'home\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['homeurl']->value;?>
">            <i class="fa fa-home b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'home\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
            <span class="b-ico-dropdown">              <i class="fa fa-arrow-circle-down">              </i>            </span>          </a>        </li>        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'profil\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'beritadmsi\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'kegiatandmsi\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                    <a href="#">            <i class="fa fa-folder-open b-menu-1level-ico">            </i>DMSI            <span class="b-ico-dropdown">              <i class="fa fa-arrow-circle-down">              </i>            </span>          </a>          <div class="b-top-nav__dropdomn">            <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title">DMSI              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_profil']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'tentang_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_profil_visi']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'visi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_berita_dmsi']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'berita_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kegiatan_dmsi']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'event_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <!--<li class="b-top-nav__2level f-top-nav__2level f-primary"><a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_pengumuman']->value;?>
"><i class="fa fa-angle-right"></i>Pengumuman</a></li>-->            </ul>          </div>        </li>        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'asosiasi\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'beritaanggota\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'kegiatananggota\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                    <a href="#">            <i class="fa fa-picture-o b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'anggota_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
             <span class="b-ico-dropdown">              <i class="fa fa-arrow-circle-down">              </i>            </span>          </a>          <div class="b-top-nav__dropdomn">            <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'anggota_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_anggota']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'profil_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_berita_anggota']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'berita_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kegiatan_anggota']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'event_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>            </ul>          </div>        </li>        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'informasi\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'opini\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'sesebi\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'program\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'bagan\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'harga\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                    <a href="#">            <i class="fa fa-code b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'informasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
             <span class="b-ico-dropdown">              <i class="fa fa-arrow-circle-down">              </i>            </span>          </a>          <div class="b-top-nav__dropdomn">            <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title" ><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'informasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </li>                            <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'act_lang\']->value==\'en\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'informasifooter\']->value!=\'\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <ul class="b-list-markers f-list-markers">                <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'informasifooter\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu" >                   <a href="<?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'url_detail\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
">                    <i class="fa fa-angle-right">                    </i> <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'kategori_english\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                  </a>                </li>                <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </ul>              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'informasifooter\']->value!=\'\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <ul class="b-list-markers f-list-markers">                <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'informasifooter\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                   <a href="<?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'url_detail\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
">                    <i class="fa fa-angle-right">                    </i> <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'kategori\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                  </a>                </li>                <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </ul>              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                          </ul>            <!-- <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'wawasan\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_opini']->value;?>
"  onClick="return true">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'opini\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_sesebi']->value;?>
"  onClick="return true">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'sesebi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>            </ul>            <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'infografis\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_program']->value;?>
" onClick="return true">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'program\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_bagan']->value;?>
" onClick="return true">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'bagan\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>            </ul> -->            <ul class="b-top-nav__2level_wrap">               <li class="b-top-nav__2level_title f-top-nav__2level_title"><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'harga\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
              </li>                            <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_harga']->value;?>
"  onClick="return true">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'grafik\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>            </ul>          </div>        </li>        <!-- <li class="b-top-nav__1level f-top-nav__1level f-primary-b"><a href="<?php echo $_smarty_tpl->tpl_vars['homeurl']->value;?>
#petaperkebunan"><i class="fa fa-picture-o b-menu-1level-ico"></i>Peta Perkebunan</a></li> -->        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'foto\'||$_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'video\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                    <a href="#">            <i class="fa fa-code b-menu-1level-ico">            </i>Media            <span class="b-ico-dropdown">              <i class="fa fa-arrow-circle-down">              </i>            </span>          </a>          <div class="b-top-nav__dropdomn">            <ul class="b-top-nav__2level_wrap">              <li class="b-top-nav__2level_title f-top-nav__2level_title">Media              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_foto']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'foto\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>              <li class="b-top-nav__2level f-top-nav__2level f-primary fontsubmenu">                <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_video']->value;?>
">                  <i class="fa fa-angle-right">                  </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'video\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                </a>              </li>            </ul>          </div>        </li>        <!-- <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_forum']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Forum</a> </li> -->        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'regulasi\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
                     <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_regulasi']->value;?>
">            <i class="fa fa-inbox b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'regulasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
          </a>         </li>        <!-- <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'download\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
           <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_download']->value;?>
">            <i class="fa fa-code b-menu-1level-ico">            </i>Download          </a>         </li> -->        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'sponsor\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
            <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_sponsor']->value;?>
">            <i class="fa fa-inbox b-menu-1level-ico">            </i>Sponsorship          </a>         </li>         <!-- <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'aspirasi\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
           <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_aspirasi']->value;?>
">            <i class="fa fa-inbox b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'aspirasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
          </a>         </li>      -->        <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php if ($_smarty_tpl->tpl_vars[\'menu\']->value[\'menu_aktif\']==\'kontak\') {?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b is-active-top-nav__1level">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php } else { ?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
        <li class="b-top-nav__1level f-top-nav__1level f-primary-b putih">          <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php }?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
           <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kontak']->value;?>
">            <i class="fa fa-list b-menu-1level-ico">            </i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'kontak\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
          </a>         </li>         </ul>    </nav>  </div></div></header><?php }} ?>

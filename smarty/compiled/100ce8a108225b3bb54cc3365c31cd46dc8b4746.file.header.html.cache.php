<?php /* Smarty version Smarty-3.1.17, created on 2016-07-18 05:56:34
         compiled from "application\views\webanggota\base-layout\header.html" */ ?>
<?php /*%%SmartyHeaderCode:2844057889c3e059fb3-57068569%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '100ce8a108225b3bb54cc3365c31cd46dc8b4746' => 
    array (
      0 => 'application\\views\\webanggota\\base-layout\\header.html',
      1 => 1468814119,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2844057889c3e059fb3-57068569',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57889c3e0decd9_57492334',
  'variables' => 
  array (
    'kontakinfo' => 0,
    'url_langid' => 0,
    'BASEURL' => 0,
    'url_langen' => 0,
    'homeurl' => 0,
    'url_menu_profil' => 0,
    'url_menu_berita' => 0,
    'url_menu_event' => 0,
    'url_menu_permasalahan' => 0,
    'url_menu_aspirasi' => 0,
    'url_menu_foto' => 0,
    'url_menu_kontak' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57889c3e0decd9_57492334')) {function content_57889c3e0decd9_57492334($_smarty_tpl) {?>
<header>
      <div class="b-top-options-panel">
          <div class="container">
              <div class="b-option-contacts f-option-contacts">
                  <a href="mailto:frexystudio@gmail.com"><i class="fa fa-envelope-o"></i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['email'];?>
</a>
                  <a href="#"><i class="fa fa-phone"></i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['telp'];?>
 </a>
                  <a href="#"><i class="fa fa-fax"></i> <?php echo $_smarty_tpl->tpl_vars['kontakinfo']->value['telp'];?>
</a>
              </div>
             
               <div class="b-right">
               <div class="b-option-contacts f-primary-b">
               
                 <a href="<?php echo $_smarty_tpl->tpl_vars['url_langid']->value;?>
" title="Indonesia"><img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/indo.png" width="20">
                 </a>  &nbsp;&nbsp;
                 <a href="<?php echo $_smarty_tpl->tpl_vars['url_langen']->value;?>
" title="English"><img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/eng.png" width="20"></a>

               </div>  
                  <span class="b-header__social-box b-header__social-box--no-fon">
                      <a href="https://www.facebook.com/Dewan-Minyak-Sawit-Indonesia-DMSI-1053108968116149/"><i class="fa fa-facebook"></i></a>
                      <a href="https://twitter.com/dewan_sawit"><i class="fa fa-twitter"></i></a>
                  </span>
              </div>
              
          </div>
          
      </div>
      <div class="container b-header__box b-relative">
          <a href="/" class="b-left b-logo"><img class="color-theme" data-retina src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
themes/default/img/logo_dmsi.png" alt="Logo DMSI" /></a>
          <div class="b-header-r b-right">
              <div class="b-top-nav-show-slide f-top-nav-show-slide b-right j-top-nav-show-slide"><i class="fa fa-align-justify"></i></div>
              <nav class="b-top-nav f-top-nav b-right j-top-nav">
                  <ul class="b-top-nav__1level_wrap">
    <li class="b-top-nav__1level f-top-nav__1level is-active-top-nav__1level f-primary-b"><a href="<?php echo $_smarty_tpl->tpl_vars['homeurl']->value;?>
"><i class="fa fa-home b-menu-1level-ico"></i>Beranda <span class="b-ico-dropdown"><i class="fa fa-arrow-circle-down"></i></span></a>
    </li>
    <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_profil']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Profil</a> </li>
     <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_berita']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Berita</a> </li>
     <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_event']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Event</a> </li>
      <li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_permasalahan']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Permasalahan</a> </li>
    	<li class="b-top-nav__1level f-top-nav__1level f-primary-b b-top-nav-big"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_aspirasi']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Aspirasi</a> </li>
      <li class="b-top-nav__1level f-top-nav__1level f-primary-b"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_foto']->value;?>
"><i class="fa fa-code b-menu-1level-ico"></i>Galery Foto</a> </li>   
      <li class="b-top-nav__1level f-top-nav__1level f-primary-b"> <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kontak']->value;?>
"><i class="fa fa-list b-menu-1level-ico"></i>Kontak </a> </li>    
        
</ul>

              </nav>
          </div>
      </div>
  </header>

<?php }} ?>

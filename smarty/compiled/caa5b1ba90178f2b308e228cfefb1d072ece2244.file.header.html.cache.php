<?php /* Smarty version Smarty-3.1.17, created on 2016-08-23 06:15:47
         compiled from "application\views\web\base-layout\header.html" */ ?>
<?php /*%%SmartyHeaderCode:172657888d5829f778-63496755%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'caa5b1ba90178f2b308e228cfefb1d072ece2244' => 
    array (
      0 => 'application\\views\\web\\base-layout\\header.html',
      1 => 1471925693,
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
<?php if ($_valid && !is_callable('content_57888d585a4f20_66336996')) {function content_57888d585a4f20_66336996($_smarty_tpl) {?><header>
</a>
 </a>
</a>
" name="form-search"> <input type="text" name="keyword" value="<?php echo $_smarty_tpl->tpl_vars['keyword']->value;?>
" placeholder="Masukan kata pencarian"/></form>
" title="Indonesia"><img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/indo.png" width="20">
" title="English"><img src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
doc/lang/eng.png" width="20"></a>

 $_from = $_smarty_tpl->tpl_vars[\'datasosmed\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>

/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
"><i class="<?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'logo\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
"></i></a>


"><i class="fa fa-user"></i>&nbsp;Registrasi</a>
themes/default/img/logo_dmsi.png" alt="Logo DMSI" style="margin-left:-50px;" /></a>



"><i class="fa fa-home b-menu-1level-ico"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'home\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
<span class="b-ico-dropdown"><i class="fa fa-arrow-circle-down"></i></span></a>



"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'tentang_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'visi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'berita_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'event_dmsi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i>Pengumuman</a></li>-->



/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
 <span class="b-ico-dropdown"><i class="fa fa-arrow-circle-down"></i></span></a>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'profil_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'berita_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'event_anggota\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>



/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
 <span class="b-ico-dropdown"><i class="fa fa-arrow-circle-down"></i></span></a>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</li>


 $_from = $_smarty_tpl->tpl_vars[\'informasifooter\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>

/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
"><i class="fa fa-angle-right"></i> <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'kategori_english\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>




 $_from = $_smarty_tpl->tpl_vars[\'informasifooter\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>

/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
"><i class="fa fa-angle-right"></i> <?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'kategori\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>



/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</li>
"  onClick="return true"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'opini\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
"  onClick="return true"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'sesebi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</li>
" onClick="return true"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'program\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
" onClick="return true"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'bagan\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>

"  onClick="return true"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'grafik\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a></li>
#petaperkebunan"><i class="fa fa-picture-o b-menu-1level-ico"></i>Peta Perkebunan</a>



"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'foto\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a>
"><i class="fa fa-angle-right"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'video\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Forum</a> </li> -->



"><i class="fa fa-inbox b-menu-1level-ico"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'regulasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a> </li>


 <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_download']->value;?>
"><i class="fa fa-code b-menu-1level-ico"></i>Download</a> </li>


  <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_sponsor']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i>Sponsorship</a> </li> 


 <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_aspirasi']->value;?>
"><i class="fa fa-inbox b-menu-1level-ico"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'aspirasi\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a> </li>     


 <a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kontak']->value;?>
"><i class="fa fa-list b-menu-1level-ico"></i><?php echo '/*%%SmartyNocache:172657888d5829f778-63496755%%*/<?php echo $_smarty_tpl->tpl_vars[\'menu\']->value[\'kontak\'];?>
/*/%%SmartyNocache:172657888d5829f778-63496755%%*/';?>
</a> </li>   
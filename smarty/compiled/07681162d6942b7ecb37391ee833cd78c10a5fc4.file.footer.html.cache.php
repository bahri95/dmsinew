<?php /* Smarty version Smarty-3.1.17, created on 2016-07-15 10:18:06
         compiled from "application\views\webanggota\base-layout\footer.html" */ ?>
<?php /*%%SmartyHeaderCode:597457889c3e3e0602-19133787%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07681162d6942b7ecb37391ee833cd78c10a5fc4' => 
    array (
      0 => 'application\\views\\webanggota\\base-layout\\footer.html',
      1 => 1468557958,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '597457889c3e3e0602-19133787',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'homeurl' => 0,
    'url_menu_profil' => 0,
    'url_menu_kontak' => 0,
    'BASEURL' => 0,
    'asosiasifooter' => 1,
    'rs' => 1,
    'kontakinfo' => 1,
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57889c3e49fcb3_38620353',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57889c3e49fcb3_38620353')) {function content_57889c3e49fcb3_38620353($_smarty_tpl) {?>  <footer>
  <div class="b-footer-primary">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-xs-12 f-copyright b-copyright">Copyright © 2016 - Dewan Minyak Sawit Indonesia (DMSI)</div>
            <div class="col-sm-4 col-xs-12">
                <div class="b-btn f-btn b-btn-default b-right b-footer__btn_up f-footer__btn_up j-footer__btn_up">
                    <i class="fa fa-chevron-up"></i>
                </div>
                <nav class="b-bottom-nav f-bottom-nav b-right hidden-xs">
                    <ul>
                        <li class="is-active-bottom-nav"><a href="<?php echo $_smarty_tpl->tpl_vars['homeurl']->value;?>
">Home</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_profil']->value;?>
">Informasi</a></li>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['url_menu_kontak']->value;?>
">Kontak Kami</a></li>
                        <li><a href="#">Site Map</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
  <div class="container">
    <div class="b-footer-secondary row">
      <div class="col-md-3 col-sm-12 col-xs-12 f-center b-footer-logo-containter">
          <a href=""><img data-retina class="b-footer-logo color-theme" src="<?php echo $_smarty_tpl->tpl_vars['BASEURL']->value;?>
themes/default/img/logo_dmsi_besar.png" alt="Logo"/></a>
          <div class="b-footer-logo-text f-footer-logo-text">
          <p>DMSI<br />Dewan Minyak Sawit Indonesia</p>
          <div class="b-btn-group-hor f-btn-group-hor">
            <a href="" target="_blank" class="b-btn-group-hor__item f-btn-group-hor__item">
              <i class="fa fa-twitter"></i>
            </a>
            <a href="" target="_blank" class="b-btn-group-hor__item f-btn-group-hor__item">
              <i class="fa fa-facebook"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-sm-12 col-xs-12">
        <h4 class="f-primary-b">Asosiasi Anggota DMSI</h4>
        <div class="b-blog-short-post row">
        
        <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php if ($_smarty_tpl->tpl_vars[\'asosiasifooter\']->value!=\'\') {?>/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

        <ul class="b-list-markers f-list-markers">
          <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php  $_smarty_tpl->tpl_vars[\'rs\'] = new Smarty_Variable; $_smarty_tpl->tpl_vars[\'rs\']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars[\'asosiasifooter\']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, \'array\');}
foreach ($_from as $_smarty_tpl->tpl_vars[\'rs\']->key => $_smarty_tpl->tpl_vars[\'rs\']->value) {
$_smarty_tpl->tpl_vars[\'rs\']->_loop = true;
?>/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

              <li> <a href="<?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'url_detail\'];?>
/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>
"><i class="fa fa-hand-o-right b-list-markers__ico f-list-markers__ico"></i> <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php echo $_smarty_tpl->tpl_vars[\'rs\']->value[\'nama_asosiasi\'];?>
/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>
</a></li>
           <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php } ?>/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

           </ul>
           <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php }?>/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

           
        </div>
      </div>
     
      <div class="col-md-3 col-sm-12 col-xs-12 ">
        <h4 class="f-primary-b">Info Kontak</h4>
        <div class="b-contacts-short-item-group">
         
          <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">
            <div class="b-contacts-short-item__icon f-contacts-short-item__icon f-contacts-short-item__icon_lg b-left">
              <i class="fa fa-map-marker"></i>
            </div>
            <div class="b-remaining f-contacts-short-item__text">
              <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php echo nl2br($_smarty_tpl->tpl_vars[\'kontakinfo\']->value[\'alamat\']);?>
/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

            </div>
          </div>
          <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">
            <div class="b-contacts-short-item__icon f-contacts-short-item__icon b-left f-contacts-short-item__icon_md">
              <i class="fa fa-phone"></i>
            </div>
            <div class="b-remaining f-contacts-short-item__text f-contacts-short-item__text_phone">
                Telepon  : <?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php echo $_smarty_tpl->tpl_vars[\'kontakinfo\']->value[\'telp\'];?>
/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>

            </div>
          </div>
          <div class="b-contacts-short-item col-md-12 col-sm-4 col-xs-12">
            <div class="b-contacts-short-item__icon f-contacts-short-item__icon b-left f-contacts-short-item__icon_xs">
              <i class="fa fa-envelope"></i>
            </div>
            <div class="b-remaining f-contacts-short-item__text f-contacts-short-item__text_email">
              <a href="mailto:regnaspcbm@gmail.com"><?php echo '/*%%SmartyNocache:597457889c3e3e0602-19133787%%*/<?php echo $_smarty_tpl->tpl_vars[\'kontakinfo\']->value[\'email\'];?>
/*/%%SmartyNocache:597457889c3e3e0602-19133787%%*/';?>
</a>
            </div>
          </div>
           
        </div>
      </div>
    </div>
  </div>
</footer><?php }} ?>

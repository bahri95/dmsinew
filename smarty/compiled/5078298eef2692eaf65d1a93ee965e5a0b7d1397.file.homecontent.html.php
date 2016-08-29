<?php /* Smarty version Smarty-3.1.17, created on 2016-08-29 09:13:37
         compiled from "application\views\web\home\homecontent.html" */ ?>
<?php /*%%SmartyHeaderCode:2974957888d58b32e76-93025506%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5078298eef2692eaf65d1a93ee965e5a0b7d1397' => 
    array (
      0 => 'application\\views\\web\\home\\homecontent.html',
      1 => 1472454610,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2974957888d58b32e76-93025506',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d58bea820_70466612',
  'variables' => 
  array (
    'judul' => 0,
    'berita_sidebar' => 0,
    'rs' => 0,
    'baseurl' => 0,
    'berita_asosiasi' => 0,
    'act_lang' => 0,
    'eventhome' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d58bea820_70466612')) {function content_57888d58bea820_70466612($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("web/home/anggota_slider.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<section class="b-tagline-box b-infoblock b-diagonal-line-bg-light">  <div class="container">    <!--<div class="f-primary-b b-title-b-hr f-title-b-hr">GRAFIK KOLEKSI</div>-->    <div class="row">      <div class="col-md-4">        <h4 class="f-primary-b b-h4-special f-h4-special--gray f-h4-special font-judul-header" style=" color: #589444;">          <?php echo $_smarty_tpl->tpl_vars['judul']->value['berita_dmsi'];?>
        </h4>        <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">          <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row"> <?php if ($_smarty_tpl->tpl_vars['berita_sidebar']->value!='') {?>            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['berita_sidebar']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>            <div class="b-blog-short-post--popular col-md-12  col-xs-12 f-primary-b">              <div class="b-blog-short-post__item_img">                 <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
">                  <img data-retina src="<?php echo $_smarty_tpl->tpl_vars['baseurl']->value;?>
php_helpers/timthumb.php?src=<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
&amp;w=120&amp;zc=0" alt="" />                </a>               </div>              <div class="b-remaining">                <div class="b-blog-short-post__item_text f-blog-short-post__item_text">                  <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" class="f-primary-b f-more font-judul"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
                  </a>                 </div>                <div class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it"> <?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
                 </div>              </div>            </div>            <?php } ?>            <?php }?>           </div>        </div>      </div>      <!--START Berita anggota DMSI-->      <div class="col-md-4">        <h4 class="f-primary-b b-h4-special f-h4-special--gray f-h4-special font-judul-header " style=" color: #589444;">          <?php echo $_smarty_tpl->tpl_vars['judul']->value['berita_anggota'];?>
        </h4>        <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">          <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row"> <?php if ($_smarty_tpl->tpl_vars['berita_asosiasi']->value!='') {?>            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['berita_asosiasi']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>            <div class="b-blog-short-post--popular col-md-12  col-xs-12 f-primary-b">              <div class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it font-judul-asosiasi"> <?php echo $_smarty_tpl->tpl_vars['rs']->value['nama_asosiasi'];?>
               </div>              <div class="b-blog-short-post__item_img">                 <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
">                  <img data-retina src="<?php echo $_smarty_tpl->tpl_vars['baseurl']->value;?>
php_helpers/timthumb.php?src=<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
&amp;w=120&amp;zc=0" alt=""/>                </a>               </div>              <div class="b-remaining">                <div class="b-blog-short-post__item_text f-blog-short-post__item_text font-judul">                   <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
                  </a>                 </div>                <div class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it"> <?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
                 </div>              </div>            </div>            <?php } ?>            <?php }?>           </div>        </div>      </div>      <!--END Berita anggota DMSI-->      <!--START KEGIATAN DMSI-->      <div class="col-sm-4">        <div class="b-carousel-secondary f-carousel-secondary b-some-examples-tertiary f-some-examples-tertiary b-carousel-reset">          <div class="b-carousel-title f-carousel-title f-primary-b" style=" color: #589444;">            <?php if ($_smarty_tpl->tpl_vars['act_lang']->value=='en') {?>            DMSI EVENT            <?php } else { ?>            EVENT DMSI            <?php }?>           </div>          <div class="b-some-examples f-some-examples j-carousel-secondary"> <?php if ($_smarty_tpl->tpl_vars['eventhome']->value!='') {?>            <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['eventhome']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>            <div class="b-some-examples__item f-some-examples__item">              <div class="b-app-with-img__item">                <div class="b-app-with-img__item_img view view-sixth">                  <img data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image_agenda'];?>
" alt="">                  <div class="b-item-hover-action f-center mask">                    <div class="b-item-hover-action__inner">                      <div class="b-item-hover-action__inner-btn_group">                        <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" class="b-btn f-btn b-btn-light f-btn-light info">                          <i class="fa fa-link">                          </i>                        </a>                      </div>                    </div>                  </div>                </div>                <div class="b-app-with-img__item_text f-center">                  <div class="b-app-with-img__item_name f-app-with-img__item_name f-primary-b">                    <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul_agenda'];?>
                    </a>                  </div>                  <div class="b-app-with-img__item_info f-app-with-img__item_info f-primary"><?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal_mulai'];?>
                  </div>                </div>              </div>              <?php } ?>              <?php }?>             </div>          </div>        </div>      </div>      <!--END KEGIATAN DMSI-->    </div>  </div>  <?php echo $_smarty_tpl->getSubTemplate ("web/home/aspirasi_slider.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
  </div><?php echo $_smarty_tpl->getSubTemplate ("web/home/sponsor_slider.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>

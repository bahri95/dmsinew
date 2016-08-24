<?php /* Smarty version Smarty-3.1.17, created on 2016-08-04 05:12:04
         compiled from "application/views/web/base-layout/search.html" */ ?>
<?php /*%%SmartyHeaderCode:63387943057a306e47f5b39-65170312%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bee22fa72e7dbdf883e47fe50d61a0e08820bdd5' => 
    array (
      0 => 'application/views/web/base-layout/search.html',
      1 => 1470298231,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '63387943057a306e47f5b39-65170312',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'data' => 0,
    'rs' => 0,
    'label' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57a306e485a956_56071875',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a306e485a956_56071875')) {function content_57a306e485a956_56071875($_smarty_tpl) {?>
<div class="row j-masonry b-col-default-indent">
            <div class="masonry-gridSizer col-xs-12 col-sm-6 col-md-3"></div>
                
                <!--start detail desc-->
                 

                     
                        <div class="j-masonry-item col-xs-12 col-sm-6 col-md-3">
                            <div class="b-blog-preview">
                                <div class="b-blog-preview__img view view-sixth">
                                <img data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['data']->value['image'];?>
" alt="">
                                <div class="b-item-hover-action f-center mask">
                                    <div class="b-item-hover-action__inner">
                                        <div class="b-item-hover-action__inner-btn_group">
                                            <a href="" class="b-btn f-btn b-btn-light f-btn-light info"><i class="fa fa-link"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="b-blog-preview__content b-diagonal-line-bg-light">
                                    <div class="b-blog-preview__content-padding_box">
                                        <p class="f-blog-preview__content-title f-primary-b"><a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
"><?php echo $_smarty_tpl->tpl_vars['data']->value['judul'];?>
</a></p>
                                        <p class="f-blog-preview__content-date f-primary-it"><?php echo $_smarty_tpl->tpl_vars['data']->value['tanggal'];?>
</p>
                                        <p class="b-blog-preview__content-text f-blog-preview__content-text"><?php echo $_smarty_tpl->tpl_vars['data']->value['content'];?>
</p>
                                    </div>
                                    <div class="b-footer-mini b-alternative-bg">
                                        <a class="f-footer-mini__link f-more f-primary-b" href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
"><i class="fa fa-angle-double-right"></i> <?php echo $_smarty_tpl->tpl_vars['label']->value['selengkapnya'];?>
</a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                     
                    
                <!--end detail -->
            </div>
            <?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?>
            <div class="b-pagination f-pagination">
                <ul>
                   <?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>

                </ul>
            </div>
            <?php }?>
            
</div>
<?php }} ?>

<?php /* Smarty version Smarty-3.1.17, created on 2016-08-09 08:49:42
         compiled from "application\views\web\base-layout\search.html" */ ?>
<?php /*%%SmartyHeaderCode:423657a031ea49c775-74880401%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0bb823962b2377e8ee44ec1dba32a8060885b5f1' => 
    array (
      0 => 'application\\views\\web\\base-layout\\search.html',
      1 => 1470725170,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '423657a031ea49c775-74880401',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57a031ea4e2c88_11769529',
  'variables' => 
  array (
    'data' => 0,
    'rs' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a031ea4e2c88_11769529')) {function content_57a031ea4e2c88_11769529($_smarty_tpl) {?>
<div class="row j-masonry b-col-default-indent">
            <div class="masonry-gridSizer col-xs-12 col-sm-6 col-md-3"></div>
                
                <!--start detail desc-->
                 
                    <?php if ($_smarty_tpl->tpl_vars['data']->value!='') {?>
                        <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['data']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
                        <div class="j-masonry-item col-xs-12 col-sm-6 col-md-3">
                            <div class="b-blog-preview">
                                <div class="b-blog-preview__img view view-sixth">
                                <img data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
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
"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
</a></p>
                                        <p class="f-blog-preview__content-date f-primary-it"><?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
</p>
                                        <p class="b-blog-preview__content-text f-blog-preview__content-text"><?php echo $_smarty_tpl->tpl_vars['rs']->value['content'];?>
</p>
                                    </div>
                                 
                            </div>
                        </div><!--j-masonry-item-->
                        
                        <?php } ?>
                         <?php }?>
                    
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

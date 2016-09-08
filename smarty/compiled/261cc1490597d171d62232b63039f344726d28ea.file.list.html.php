<?php /* Smarty version Smarty-3.1.17, created on 2016-08-10 05:01:19
         compiled from "application\views\web\sesebi\list.html" */ ?>
<?php /*%%SmartyHeaderCode:21846578ca65890b691-48605859%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '261cc1490597d171d62232b63039f344726d28ea' => 
    array (
      0 => 'application\\views\\web\\sesebi\\list.html',
      1 => 1470700997,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21846578ca65890b691-48605859',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578ca658a72ce7_85290268',
  'variables' => 
  array (
    'sesebi_list' => 0,
    'rs' => 0,
    'page_modul' => 0,
    'label' => 0,
    'pagging' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578ca658a72ce7_85290268')) {function content_578ca658a72ce7_85290268($_smarty_tpl) {?><div class="l-inner-page-container">
    <div class="container">
        
    <?php if ($_smarty_tpl->tpl_vars['sesebi_list']->value!='') {?>
    <?php  $_smarty_tpl->tpl_vars['rs'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rs']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['sesebi_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rs']->key => $_smarty_tpl->tpl_vars['rs']->value) {
$_smarty_tpl->tpl_vars['rs']->_loop = true;
?>
    <div class="b-blog-one-column__row">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class=" view view-sixth">
    <img data-retina="" src="<?php echo $_smarty_tpl->tpl_vars['rs']->value['image'];?>
" alt="">
    <div class="b-item-hover-action f-center mask">
        <div class="b-item-hover-action__inner">
            <div class="b-item-hover-action__inner-btn_group">
                <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" class="b-btn f-btn b-btn-light f-btn-light info"><i class="fa fa-link"></i></a>
            </div>
        </div>
    </div>
</div>
            </div>
            <div class="col-sm-6 col-md-8">
                <div class="b-blog__title b-form-row f-h4-special"><a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" class="f-primary-l f-title-big f-blog__title"><?php echo $_smarty_tpl->tpl_vars['rs']->value['judul'];?>
</a></div>
<div class="b-form-row f-h4-special clearfix">
    <div class="pull-left">
        <a href="#" class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate b-blog-one-column__info_edit">
            <i class="fa fa-pencil"></i>
        </a>
    </div>
    <div class="b-blog-one-column__info_container">
        <div class="b-blog-one-column__info">
           
            <a href="#" class="f-more"><?php echo $_smarty_tpl->tpl_vars['page_modul']->value;?>
</a>
             <span class="b-blog-one-column__info_delimiter"></span>
            Tanggal Posting :  <a href="#" class="f-more"><?php echo $_smarty_tpl->tpl_vars['rs']->value['tanggal'];?>
</a>
                      
            
        </div>
    </div>
</div>
<div class="b-form-row b-blog-one-column__text"><?php echo $_smarty_tpl->tpl_vars['rs']->value['content'];?>
</div>
<div class="b-form-row b-null-bottom-indent">
    <a href="<?php echo $_smarty_tpl->tpl_vars['rs']->value['url_detail'];?>
" class="b-btn f-btn b-btn-md b-btn-default f-primary-b"><?php echo $_smarty_tpl->tpl_vars['label']->value['selengkapnya'];?>
</a>
</div>
            </div>
        </div>

    </div>
  <?php } ?>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['pagging']->value!='') {?>
            <div class="b-pagination f-pagination">
                <ul>
                   <?php echo $_smarty_tpl->tpl_vars['pagging']->value;?>

                </ul>
            </div>
            <?php }?>
    </div>
</div><?php }} ?>

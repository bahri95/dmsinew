<?php /* Smarty version Smarty-3.1.17, created on 2016-09-06 01:56:46
         compiled from "application\views\web\asosiasi\detail.html" */ ?>
<?php /*%%SmartyHeaderCode:19221578c6f8a904bb1-38679275%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e9b73766bd4288ad5b57d21e8b2fd722b0743238' => 
    array (
      0 => 'application\\views\\web\\asosiasi\\detail.html',
      1 => 1472788283,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19221578c6f8a904bb1-38679275',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578c6f8aa60686_06879591',
  'variables' => 
  array (
    'data' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578c6f8aa60686_06879591')) {function content_578c6f8aa60686_06879591($_smarty_tpl) {?><div class="col-md-9">  <div class="f-primary-b b-title-b-hr f-title-b-hr"><?php echo $_smarty_tpl->tpl_vars['data']->value['nama_asosiasi'];?>
  </div>  <div class="row" style="padding-top:10px;">    <div class="col-md-3" style="float:left;margin:0 10px 10px 0;">      <div class="b-app-with-img__item">        <div class="b-app-with-img__item_img view view-sixth  b-tagline-box  b-tagline-box--no-shadow">           <img data-animate="fadeIn" data-retina src="<?php echo $_smarty_tpl->tpl_vars['data']->value['logo_asosiasi'];?>
" alt=""/>        </div>      </div>      </div>    <div class="col-xs-12 col-md-8">      <div class="b-tagline-box ">        <div class="f-tagline_description">           <table>            <tr>              <td>Telp.&nbsp;              </td>               <td>: <?php echo $_smarty_tpl->tpl_vars['data']->value['telepon'];?>
              </td>            </tr>            <tr>              <td>Fax&nbsp;              </td>               <td>: <?php echo $_smarty_tpl->tpl_vars['data']->value['fax'];?>
              </td>            </tr>            <tr>              <td>Email&nbsp;              </td>              <td>: <?php echo $_smarty_tpl->tpl_vars['data']->value['email'];?>
              </td>            </tr>            <tr>              <td>Website&nbsp;              </td>               <td>: &nbsp;                <a href="<?php echo $_smarty_tpl->tpl_vars['data']->value['website'];?>
"><?php echo $_smarty_tpl->tpl_vars['data']->value['website'];?>
                </a>              </td>            </tr>            <tr>              <td>Alamat&nbsp;              </td>              <td>: <?php echo nl2br($_smarty_tpl->tpl_vars['data']->value['alamat']);?>
              </td>              <td><?php echo $_smarty_tpl->tpl_vars['data']->value['nama_kota'];?>
, <?php echo $_smarty_tpl->tpl_vars['data']->value['nama_propinsi'];?>
              </td>            </tr>          </table>        </div>      </div>    </div>    <div class="col-xs-12 col-md-11">      <div class="b-tagline-box ">        <div class="f-tagline_description">           <h3>PROFIL           </h3>          <?php echo $_smarty_tpl->tpl_vars['data']->value['profil'];?>
        </div>      </div>    </div>    <!--end detail -->  </div>  <!--end row--></div><?php }} ?>

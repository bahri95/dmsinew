<?php /* Smarty version Smarty-3.1.17, created on 2016-08-02 11:54:53
         compiled from "application\views\private\loginadmin\lupa.html" */ ?>
<?php /*%%SmartyHeaderCode:29321578daaf377bad4-13404502%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9c377a10bdd477f59633a476f48847e2c124de61' => 
    array (
      0 => 'application\\views\\private\\loginadmin\\lupa.html',
      1 => 1470036018,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '29321578daaf377bad4-13404502',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_578daaf37c9cf5_56294187',
  'variables' => 
  array (
    'notification_msg' => 0,
    'url_forget_process' => 0,
    'url_login_view_admin' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_578daaf37c9cf5_56294187')) {function content_578daaf37c9cf5_56294187($_smarty_tpl) {?>
<div class="container">
<div class="row">
      
        <br/>

        <div class="col-sm-4 col-sm-offset-4 login_box">
          <?php if ($_smarty_tpl->tpl_vars['notification_msg']->value!='') {?>
              <div class="b-form-row">
                  <div class="b-shortcode-example">
                    <div class="b-alert-warning f-alert-warning">
                      <div class="b-right">
                        <i class="fa fa-times-circle-o"></i>
                      </div>
                      <div class="b-remaining">
                        <i class="fa fa-exclamation-triangle"></i><?php echo $_smarty_tpl->tpl_vars['notification_msg']->value;?>

                      </div>
                    </div>
                  </div>
              
              </div>
              <?php }?>
              
          <h3 style="color:#01A9DB">LUPA PASSWORD</h3>
          <br/>
           <form name="form_login2" id="form_login2" method="post" action="<?php echo $_smarty_tpl->tpl_vars['url_forget_process']->value;?>
" class="b-form f-form b-form-inline f-form-inline">

          <div class="b-form-row">
                          <label class="b-form-horizontal__label" for="create_account_email">Email</label>
                          <div class="b-form-horizontal__input">
                              <input name="email" type="text" id="email" class="form-control" />
                          </div>
                      </div>
                      <div class="b-form-row">
                          <div class="b-form-horizontal__label"></div>
                          <div class="b-form-horizontal__input">
                          <input type="submit" name="b_login" value="Kirim"  class="b-btn f-btn b-btn-md b-btn-default f-primary-b b-btn__w100" />
                          </div>
                      </div>
                      <a href="<?php echo $_smarty_tpl->tpl_vars['url_login_view_admin']->value;?>
">Kembali</a>
        </form>
      </div>
</div>
<?php }} ?>

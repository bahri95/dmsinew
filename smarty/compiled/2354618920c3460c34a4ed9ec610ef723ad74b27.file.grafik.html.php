<?php /* Smarty version Smarty-3.1.17, created on 2016-09-09 11:13:14
         compiled from "application\views\private\dashboard\grafik.html" */ ?>
<?php /*%%SmartyHeaderCode:1262157888d7db98ed5-88640668%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2354618920c3460c34a4ed9ec610ef723ad74b27' => 
    array (
      0 => 'application\\views\\private\\dashboard\\grafik.html',
      1 => 1473412347,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1262157888d7db98ed5-88640668',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57888d7dc60284_08097356',
  'variables' => 
  array (
    'url_private' => 0,
    'total_foto' => 0,
    'total_album' => 0,
    'total_video' => 0,
    'url_video' => 0,
    'total_informasi' => 0,
    'total_opini' => 0,
    'total_sesebi' => 0,
    'url_opini' => 0,
    'url_sesebi' => 0,
    'berita' => 0,
    'berita_anggota' => 0,
    'event' => 0,
    'event_anggota' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57888d7dc60284_08097356')) {function content_57888d7dc60284_08097356($_smarty_tpl) {?><section class="content-header">  <h1>    Dashboard    <small>panel    </small>  </h1>  <ol class="breadcrumb">    <li>      <a href="<?php echo $_smarty_tpl->tpl_vars['url_private']->value;?>
">        <i class="fa fa-dashboard">        </i> Home      </a>    </li>    <li class="active">Dashboard    </li>  </ol></section><!-- Main content --><section class="content">  <div class="row">    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-aqua">        <div class="inner">          <h4>            <table>              <tr>                <td>Foto &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['total_foto']->value;?>
 dari <?php echo $_smarty_tpl->tpl_vars['total_album']->value;?>
 Album                </td>              <tr/>              <tr>                <td>Video &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_video']->value;?>
                </td>              </tr>            </table>          </h4>          <p>            &nbsp;          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-camera                    ">          </i>        </div>        <a href="#" class="small-box-footer">          Foto dan Video         <!--  <i class="fa fa-arrow-circle-right">          </i> -->        </a>       <!--  <a href="<?php echo $_smarty_tpl->tpl_vars['url_video']->value;?>
" class="small-box-footer">          Video           <i class="fa fa-arrow-circle-right">          </i>        </a> -->      </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-green">        <div class="inner">          <h5>            <table>              <tr>                <td>Informasi &nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['total_informasi']->value;?>
                </td>              <tr/>              <tr>                <td>Opini &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_opini']->value;?>
                </td>              </tr>              <tr>                <td>Serba-serbi &nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['total_sesebi']->value;?>
                </td>              </tr>            </table>          </h5>          <p>            &nbsp;          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-send                    ">          </i>        </div>        <a href="#" class="small-box-footer">          Informasi, Opini dan Serba-serbi          <!-- <i class="fa fa-arrow-circle-right">          </i> -->        </a>        <!-- <a href="<?php echo $_smarty_tpl->tpl_vars['url_opini']->value;?>
" class="small-box-footer">          Opini           <i class="fa fa-arrow-circle-right">          </i>        </a>        <a href="<?php echo $_smarty_tpl->tpl_vars['url_sesebi']->value;?>
" class="small-box-footer">          Serba-serbi           <i class="fa fa-arrow-circle-right">          </i>        </a> -->      </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->      <div class="small-box bg-yellow">        <div class="inner">          <h4>            <table>              <tr>                <td>Berita DMSI&nbsp;                 </td>                <td><?php echo $_smarty_tpl->tpl_vars['berita']->value;?>
                </td>              <tr/>              <tr>                <td>Berita Anggota&nbsp;                 </td>                  <td><?php echo $_smarty_tpl->tpl_vars['berita_anggota']->value;?>
                </td>              </tr>            </table>          </h4>          <p>           &nbsp;          </p>        </div>        <div class="icon">          <i class="glyphicon glyphicon-bullhorn">          </i>        </div>        <a href="#" class="small-box-footer">          Berita          <!--  <i class="fa fa-arrow-circle-right">          </i> -->        </a>             </div>    </div>    <!-- ./col -->    <div class="col-lg-3 col-xs-6">      <!-- small box -->                    <div class="small-box bg-red">                      <div class="inner">                        <h4>                          <table>                            <tr>                              <td>Event DMSI &nbsp;                               </td>                              <td><?php echo $_smarty_tpl->tpl_vars['event']->value;?>
                              </td>                            <tr/>                            <tr>                              <td>Event Anggota &nbsp;                               </td>                                <td><?php echo $_smarty_tpl->tpl_vars['event_anggota']->value;?>
                              </td>                            </tr>                                                    </table>                        </h4>                      <p>                        &nbsp;                      </p>                    </div>                    <div class="icon">                      <i class="glyphicon glyphicon-calendar">                      </i>                    </div>                    <a href="#" class="small-box-footer">                      Event                       <!-- <i class="fa fa-arrow-circle-right">                      </i> -->                    </a>                         </div>                </div>                <!-- ./col -->              </div>              <!-- /.row -->              <div class="row">                 <?php echo $_smarty_tpl->getSubTemplate ("private/harga/grafik.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
              </div>              <!-- /.row -->            </section>            <!-- /.content -->          </div>          <!--tab 8-->        </div>        <!--tab content -->      </div>    </div>    <!-- /.box-body -->  </div></section><!-- right col --></div><!-- /.row (main row) --></section><!-- /.content --><?php }} ?>

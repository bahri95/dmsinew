<?php /* Smarty version Smarty-3.1.17, created on 2016-07-15 10:18:05
         compiled from "application\views\webanggota\base-layout\sound.html" */ ?>
<?php /*%%SmartyHeaderCode:76357889c3df03e13-23773287%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb9090542c587715dadf5eb0d9e24856832cb1dd' => 
    array (
      0 => 'application\\views\\webanggota\\base-layout\\sound.html',
      1 => 1468557959,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '76357889c3df03e13-23773287',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_57889c3e017923_75315038',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57889c3e017923_75315038')) {function content_57889c3e017923_75315038($_smarty_tpl) {?>
<div class="col-md-2">
  <div class="b-audio-player">

    <div id="jquery_jplayer_1" class="jp-jplayer"></div>

    <div id="jp_container_1" class="jp-audio">
       
        <div class="jp-type-playlist">
            <div class="jp-gui jp-interface b-audio-player__content">
                <ul class="jp-controls b-audio-player__content_nav f-audio-player__content_nav">
                    <li class="b-audio-player__content_nav_prev"><a href="javascript:;" class="jp-previous " tabindex="1"><i class="fa fa-backward"></i></a></li>
                    <li class="b-audio-player__content_nav_play"><a href="javascript:;" class="jp-play " tabindex="1"><i class="fa fa-play"></i></a><a href="javascript:;" class="jp-pause" tabindex="1"><i class="fa fa-pause"></i></a></li>
                    <li class="b-audio-player__content_nav_next"><a href="javascript:;" class="jp-next " tabindex="1"><i class="fa fa-forward"></i></a></li>
                </ul>
                <div class="b-audio-player__content_inner f-audio-player__content_inner">
                    <div class="jp-time-holder b-audio-player__time f-audio-player__time">
                        <div class="jp-current-time"></div>
                    </div>
                    <div class="jp-time-holder b-audio-player__full-time">
                        <div class="jp-duration"></div>
                    </div>
                    <div class="jp-progress b-audio-player__progress-bar_box">
                        <div class="b-audio-player__progress-bar_container">
                            <div class="jp-seek-bar b-audio-player__progress-bar">
                                <div class="jp-play-bar b-audio-player__progress-bar_progress"><div class="b-audio-player__progress-bar_progress_btn"></div></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="jp-playlist">
                <ul>
                    <li></li>
                </ul>
            </div>
         
        </div>
</div>
</div>
</div>
<?php }} ?>

<?php
if(!function_exists('direction')){
    function direction(){
        if(session()->has('lang')){
            if(session('lang')=='ar'){
                return 'rtl';
            }else{
                return 'ltr';
            }
        }else{
            return 'ltr';
        }
    }
}

if(!function_exists('up')){
    function up(){
        return new \App\Http\Controllers\Upload;
    }}

if(!function_exists('active_menu')){
        
        function active_menu($link){
            if(preg_match('/'.$link.'/i',Request::segment(2))){
                return ['menu_open','display:block'];
            }else{
                return ['',''];
            }
        }
    }
    if(!function_exists('lang')){
        function lang(){
            if(session()->has('lang')){
                return session('lang');
            }else{
                return setting()->main_lang;
            }
        }

    }
    if(!function_exists('setting')){
        function setting(){
            return \App\Model\Setting::orderBy('id','desc')->first();
    }}
        
    if(!function_exists('v_image')){
        function v_image($ext=null){
            if($ext ===null){
                return 'image|mimes:jpg,jpeg,gif,bmp,PNG';
            }else{
                return 'image|mimes'.$ext;
            }

        }
}
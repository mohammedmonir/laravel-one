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

if(!function_exists('load_dep')){
    function load_dep($select = null,$dep_hide=null){
       $departments = \App\Model\Department::selectRaw('dep_name_'.session('lang').' as text')
        ->selectRaw('id as id')
        ->selectRaw('parent as parent')
        ->get(['text','parent','id']);

        $dep_arr = [];
        foreach($departments as $department){
            $list_arr= [];
            $list_arr['icon']='';
            $list_arr['li_attr']='';
            $list_arr['a_attr']='';
            $list_arr['children']=[];

            if($select !==null and $select ==$department->id){
              
                $list_arr['state']=[
                    'opend'=>true,
                    'selected'=>true,
                    'disabled'=>false,
                ];
            }

            if($dep_hide !==null and $dep_hide ==$department->id){
              
                $list_arr['state']=[
                    'opend'=>false,
                    'selected'=>false,
                    'disabled'=>true,
                    'hidden'=>true,
                ];
            }
                
                $list_arr['id']=$department->id;
                $list_arr['parent']=$department->parent > 0 ? $department->parent:'#';
                $list_arr['text']=$department->text;
                array_push($dep_arr,$list_arr);
            }

            return json_encode($dep_arr,JSON_UNESCAPED_UNICODE);
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
                session()->put('lang',setting()->main_lang);
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
                return 'image|mimes:jpg,jpeg,gif,bmp,png';
            }else{
                return 'image|mimes'.$ext;
            }

        }
}
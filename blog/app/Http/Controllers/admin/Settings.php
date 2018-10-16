<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\Model\Setting;
use Illuminate\Http\Request;
use Storage;


class Settings extends Controller
{

    public function setting(){
        return view('admin.settings',['title'=>trans('admin.settings')]);
    }
    public function setting_save(){
        $data = $this->validate(request(),[
            'logo'=>v_image(),
            'icon'=>v_image(),
            'sitename_ar'=>'',  
            'sitename_en'=>'',  
            'email'=>'',  
            'description'=>'',  
            'keywords'=>'',  
            'main_lang'=>'',  
            'status'=>'',  
            'message_maintenance'=>'',[],[
          
            'logo'=>trans('admin.logo'),
            'icon'=>trans('admin.icon'),
            ]
        ]);
        
        if(request()->hasFile('logo')){
         $data['logo']=up()->upload([
             'file'=>'logo',
             'path'=>'settings',
             'upload_type'=>'single',
             'delete_file'=>setting()->logo,
         ]);
        }


        if(request()->hasFile('icon')){
             $data['icon'] =up()->upload([
                'file'=>'icon',
                'path'=>'settings',
                'upload_type'=>'single',
                'delete_file'=>setting()->settings,
            ]);
        }
        
        Setting::orderBy('id','desc')->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/settings'));
    }

}
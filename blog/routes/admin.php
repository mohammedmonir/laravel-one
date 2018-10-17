<?php


Route::group(['prefix'=>'admin','namespace'=> 'admin'],function(){
    Config::set('auth.defines','admin');

    Route::get('login','AdminAuth@login');
    Route::post('login','AdminAuth@dologin');

    Route::get('forget_password','AdminAuth@forgetpassword');
    Route::post('forget_password','AdminAuth@forgetpassword_post');
    Route::get('reset/password/{token}','AdminAuth@reset_password');
    Route::post('reset/password/{token}','AdminAuth@reset_password_final');

    Route::group(['middleware'=>'admin:admin'],function(){
        Route::resource('admin','AdminController');
        Route::delete('admin/distroy/all','AdminController@multi_delete');

        Route::resource('users','UsersController');
        Route::delete('users/distroy/all','UsersController@multi_delete');
        Route::resource('countries','CountriesController');
        Route::delete('countries/distroy/all','CountriesController@multi_delete');

        Route::get('/',function(){
            return view('admin.home');
        });
        Route::get('settings','Settings@setting');
        Route::post('settings','Settings@setting_save');
        Route::any('logout','AdminAuth@logout');
    });


    
    Route::get('lang/{lang}',function($lang){
        if(session()->has('lang')){
            session()->forget('lang');
        }

        if($lang=='ar'){
            session()->put('lang','ar');
        }
        else{
            session()->put('lang','en');
        }
        return back();
    });
    
    

});

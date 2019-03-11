<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Mall extends Model
{
    protected $table= 'malls';
    protected $fillable= [
            
        'name_ar' ,
        'name_en',
        'email',
        'mobile',
        'facebook',                
        'twitter',        
        'website',        
        'contact_name',   
        'lat',
        'lng',
        'icon',          
    ];
}

<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $table = 'settings';
    protected $fillable = [ //الحقول المطلوبة في شغلي ولازم كل ريكويست ابعتو لازم تكوون مبعوتة في الطلب
        'sitename_ar',
        'sitename_en',
        'logo',
        'icon',
        'email',
        'description',
        'keywords',
        'status',
        'message_maintenance',
        'main_lang',
       
    ];
}

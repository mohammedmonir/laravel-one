@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/cities') ])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('city_name_ar',trans('admin.city_name_ar'))!!}
                            {!!Form::text('city_name_ar',old('country_name_ar'),['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('city_name_en',trans('admin.city_name_en'))!!}
                            {!!Form::text('city_name_en',old('country_name_en'),['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('country_id',trans('admin.country_id'))!!}
                            {!!Form::select('country_id',App\model\Country::pluck('country_name_'.session("lang"),'id'),old('country_id'),['class'=>'form-control'])!!}
                    </div>
                   
                   
                    {!!Form::submit(trans('admin.add'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
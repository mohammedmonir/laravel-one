@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/countries/'.$country->id),'method'=>'put','files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('country_name_ar',trans('admin.country_name_ar'))!!}
                            {!!Form::text('country_name_ar',$country->country_name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('country_name_en',trans('admin.country_name_en'))!!}
                            {!!Form::text('country_name_en',$country->country_name_en,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('code',trans('admin.code'))!!}
                            {!!Form::text('code',$country->code,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('mob',trans('admin.mob'))!!}
                            {!!Form::text('mob',$country->mob,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('logo',trans('admin.country_flag'))!!}
                            {!!Form::file('logo',['class'=>'form-control'])!!}

                             @if(!empty($country->logo))
                                 <img src='{{Storage::url($country->logo)}}' style='width:15%;height:15%;border-radius:50%'/>
                             @endif
                    </div>

                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
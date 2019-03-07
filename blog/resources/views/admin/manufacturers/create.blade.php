@extends('admin.index')
@section('content')


    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/manufacturers') ,'files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('name_ar',trans('admin.name_ar'))!!}
                            {!!Form::text('name_ar',old('name_ar'),['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('name_en',trans('admin.name_en'))!!}
                            {!!Form::text('name_en',old('name_en'),['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('contact_name',trans('admin.contact_name'))!!}
                            {!!Form::text('contact_name',old('contact_name'),['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('email',trans('admin.email'))!!}
                            {!!Form::email('email',old('email'),['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('mobile',trans('admin.mobile'))!!}
                            {!!Form::text('mobile',old('mobile'),['class'=>'form-control'])!!}
                    </div>

                   
                    <div class='form-group'>
                            {!!Form::label('facebook',trans('admin.facebook'))!!}
                            {!!Form::text('facebook',old('facebook'),['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('twitter',trans('admin.twitter'))!!}
                            {!!Form::text('twitter',old('twitter'),['class'=>'form-control'])!!}
                    </div>
                   
                   
                    <div class='form-group'>
                            {!!Form::label('icon',trans('admin.manufacturers_icon'))!!}
                            {!!Form::file('icon',['class'=>'form-control'])!!}
                    </div>
                   
                    {!!Form::submit(trans('admin.add'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
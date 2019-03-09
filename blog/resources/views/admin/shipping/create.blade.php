@extends('admin.index')
@section('content')


    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/shipping') ,'files'=>true])!!}
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
                            {!!Form::label('user_id',trans('admin.owner_id'))!!}
                            {!!Form::select('user_id',App\User::where('level','company')->pluck('username','id'),old('user_id'),['class'=>'form-control'])!!}
                    </div>

                   
                    <div class='form-group'>
                            {!!Form::label('icon',trans('admin.ship_icon'))!!}
                            {!!Form::file('icon',['class'=>'form-control'])!!}
                    </div>
                   
                    {!!Form::submit(trans('admin.add'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
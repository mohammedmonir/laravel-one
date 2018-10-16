@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/users/'.$user->id),'method'=>'put'])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('username',trans('admin.username'))!!}
                            {!!Form::text('username',$user->username,['class'=>'form-control'])!!}
                    </div>
                    <div class='form-group'>
                            {!!Form::label('email',trans('admin.email'))!!}
                            {!!Form::email('email',$user->email,['class'=>'form-control'])!!}
                    </div>
                    <div class='form-group'>
                            {!!Form::label('password',trans('admin.password'))!!}
                            {!!Form::password('password',['class'=>'form-control'])!!}
                    </div>
                    
                    <div class='form-group'>
                            {!!Form::label('level',trans('admin.level'))!!}
                            {!!Form::select('level',['user'=>trans('admin.user'),'vendor'=>trans('admin.vendor'),
                            'company'=>trans('admin.company')],$user->level,
                            ['class'=>'form-control','placeholder'=>'.......'])!!}
                    </div>
                    {!!Form::submit(trans('admin.save'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
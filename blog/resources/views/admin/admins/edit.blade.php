@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/admin/'.$admin->id),'method'=>'put'])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('username',trans('admin.username'))!!}
                            {!!Form::text('username',$admin->username,['class'=>'form-control'])!!}
                    </div>
                    <div class='form-group'>
                            {!!Form::label('email',trans('admin.email'))!!}
                            {!!Form::email('email',$admin->email,['class'=>'form-control'])!!}
                    </div>
                    <div class='form-group'>
                            {!!Form::label('password',trans('admin.password'))!!}
                            {!!Form::password('password',['class'=>'form-control'])!!}
                    </div>
                    
                    {!!Form::submit(trans('admin.save'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
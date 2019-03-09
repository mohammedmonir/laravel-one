@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/shipping/'.$shipping->id),'method'=>'put','files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('name_ar',trans('admin.name_ar'))!!}
                            {!!Form::text('name_ar',$shipping->name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('name_en',trans('admin.country_name_en'))!!}
                            {!!Form::text('name_en',$shipping->name_en,['class'=>'form-control'])!!}
                    </div>

                     <div class='form-group'>
                            {!!Form::label('user_id',trans('admin.owner_id'))!!}
                            {!!Form::select('user_id',App\User::where('level','company')->pluck('name','id'),$shipping->user_id'),['class'=>'form-control'])!!}
                    </div>
                   
                   
                   
                    <div class='form-group'>
                            {!!Form::label('icon',trans('admin.ship_icon'))!!}
                            {!!Form::file('icon',['class'=>'form-control'])!!}

                             @if(!empty($shipping->icon))
                                 <img src='{{Storage::url($shipping->icon)}}' style='width:15%;height:15%;border-radius:50%'/>
                             @endif
                    </div>

                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
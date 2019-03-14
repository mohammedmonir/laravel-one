@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/colors/'.$colors->id),'method'=>'put'])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('name_ar',trans('admin.name_ar'))!!}
                            {!!Form::text('name_ar',$colors->name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('name_en',trans('admin.country_name_en'))!!}
                            {!!Form::text('name_en',$colors->name_en,['class'=>'form-control'])!!}
                    </div>

                     <div class='form-group'>
                            {!!Form::label('color',trans('admin.contact_name'))!!}
                            {!!Form::color('color',$colors->color,['class'=>'form-control'])!!}
                    </div>

                 

                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
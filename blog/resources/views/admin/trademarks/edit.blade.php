@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/trademarks/'.$trademark->id),'method'=>'put','files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('name_ar',trans('admin.name_ar'))!!}
                            {!!Form::text('name_ar',$trademark->name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('name_en',trans('admin.country_name_en'))!!}
                            {!!Form::text('name_en',$trademark->name_en,['class'=>'form-control'])!!}
                    </div>
                   
                   
                    <div class='form-group'>
                            {!!Form::label('logo',trans('admin.tradeicon'))!!}
                            {!!Form::file('logo',['class'=>'form-control'])!!}

                             @if(!empty($trademark->logo))
                                 <img src='{{Storage::url($trademark->logo)}}' style='width:15%;height:15%;border-radius:50%'/>
                             @endif
                    </div>

                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
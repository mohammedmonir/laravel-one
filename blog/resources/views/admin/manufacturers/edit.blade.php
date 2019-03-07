@extends('admin.index')
@section('content')
    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/manufacturers/'.$manufacturers->id),'method'=>'put','files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('name_ar',trans('admin.name_ar'))!!}
                            {!!Form::text('name_ar',$manufacturers->name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('name_en',trans('admin.country_name_en'))!!}
                            {!!Form::text('name_en',$manufacturers->name_en,['class'=>'form-control'])!!}
                    </div>

                     <div class='form-group'>
                            {!!Form::label('contact_name',trans('admin.contact_name'))!!}
                            {!!Form::text('contact_name',$manufacturers->contact_name,['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('email',trans('admin.email'))!!}
                            {!!Form::email('email',$manufacturers->email,['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('mobile',trans('admin.mobile'))!!}
                            {!!Form::text('mobile',$manufacturers->mobile,['class'=>'form-control'])!!}
                    </div>

                   
                    <div class='form-group'>
                            {!!Form::label('facebook',trans('admin.facebook'))!!}
                            {!!Form::text('facebook',$manufacturers->facebook,['class'=>'form-control'])!!}
                    </div>

                    <div class='form-group'>
                            {!!Form::label('twitter',trans('admin.twitter'))!!}
                            {!!Form::text('twitter',$manufacturers->twitter,['class'=>'form-control'])!!}
                    </div>
                   
                   
                    <div class='form-group'>
                            {!!Form::label('icon',trans('admin.tradeicon'))!!}
                            {!!Form::file('icon',['class'=>'form-control'])!!}

                             @if(!empty($manufacturers->icon))
                                 <img src='{{Storage::url($manufacturers->icon)}}' style='width:15%;height:15%;border-radius:50%'/>
                             @endif
                    </div>

                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
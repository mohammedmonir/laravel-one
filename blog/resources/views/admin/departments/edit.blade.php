@extends('admin.index')
@section('content')
@push('js')
    <script>
        $(document).ready(function(){
            $('#jstree').jstree({
                "core" : {
                    'data' :{!! load_dep($department->parent,$department->id)!!},
                    "themes" : {
                    "variant" : "large"
                    }
                },
                "checkbox" : {
                    "keep_selected_style" : false
                },
                "plugins" : ["wholerow"]
                });
            });

            $('#jstree').on('changed.jstree',function(e,data){
                var i, j,r = [];
                for(i=0,j=data.selected.length; i<j; i++){

                    r.push(data.instance.get_node(data.selected[i]).id);
                }
                $('.parent_id').val(r.join(', '));

        });
    </script>
@endpush


    <div class="box" style='padding:2%'>
        <div class="box-header" >
                        <h3 class="box-title">{{$title}}</h3>
            </div >
                    {!!Form::open(['url'=>url('admin/departments/'.$department->id),'method'=>'put' ,'files'=>true])!!}
                    <div>
                    <div class='form-group'>
                            {!!Form::label('dep_name_ar',trans('admin.dep_name_ar'))!!}
                            {!!Form::text('dep_name_ar',$department->dep_name_ar,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('dep_name_en',trans('admin.dep_name_en'))!!}
                            {!!Form::text('dep_name_en',$department->dep_name_en,['class'=>'form-control'])!!}
                    </div>
                    
                    <div class='clearfix'></div>
                         <div id="jstree"></div>
                         <input type="hidden" name='parent' class='parent_id' vlaue='{{old("parent")}}'>
                    <div class='clearfix'></div>

                    <div class='form-group'>
                            {!!Form::label('description',trans('admin.description'))!!}
                            {!!Form::textarea('description',$department->description,['class'=>'form-control'])!!}
                    </div>
                   
                    <div class='form-group'>
                            {!!Form::label('keyword',trans('admin.keyword'))!!}
                            {!!Form::textarea('keyword',$department->keyword,['class'=>'form-control'])!!}
                    </div>
                  
                   
                    <div class='form-group'>
                            {!!Form::label('icon',trans('admin.icon'))!!}
                            {!!Form::file('icon',['class'=>'form-control'])!!}
                            @if(!empty($department->icon) and Storage::has($department->icon))
                                <img src="{{ Storage::url($department->icon)}}" alt="" style='width:20%;height:20%'>
                            @endif
                    </div>
                   
                    {!!Form::submit(trans('admin.edit'),['class'=>'btn btn-primary'])!!}
                    {!!Form::close()!!}
                        
           
            </div>          
        </div>          
    </div>

     

@endsection
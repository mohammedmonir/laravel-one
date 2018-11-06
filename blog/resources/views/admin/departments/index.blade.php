@extends('admin.index')
@section('content')
@push('js')
    <script>
        $(document).ready(function(){
            $('#jstree').jstree({
                "core" : {
                    'data' : {!! load_dep() !!},
                    "themes" : {
                    "variant" : "large"
                    }
                },
                "checkbox" : {
                    "keep_selected_style" : true
                },
                "plugins" : [ "wholerow" ]
                });

        });

             $('#jstree').on('changed.jstree',function(e,data){
                var i, j,r = [];
                for(i=0,j=data.selected.length; i<j; i++){

                    r.push(data.instance.get_node(data.selected[i]).id);
                }
                $('.parent_id').val(r.join(', '));
                
                if(r.join(', ') !=''){
                    $('.showbtn_control').removeClass('hidden');
                    $('.edit_dep').attr('href','{{url("admin/departments")}}/'+r.join(', ')+'/edit');
                    
                }else{
                    $('.showbtn_control').addClass('hidden');
                }
        });
    </script>
@endpush

    <div class="box">
        <div class="box-header">
            <h3 class="box-title">{{$title}}</h3>
        </div>

        <div class="box-body">
            <a href="" class='btn btn-info edit_dep showbtn_control hidden'><i class='fa fa-edit'></i> {{trans('admin.edit')}}</a>
            <a href="" class='btn btn-danger delete_dep showbtn_control hidden'><i class='fa fa-trash'></i> {{trans('admin.delete')}}</a>
            <div id="jstree"></div>
            <input type="hidden" name='parent' class='parent_id' vlaue=''>
        </div>
                
    </div>

         <!-- Trigger the modal with a button -->
    

  

@endsection
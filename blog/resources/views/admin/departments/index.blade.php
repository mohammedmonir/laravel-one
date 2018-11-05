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
                "plugins" : [ "wholerow", "checkbox" ]
                });

        });
    </script>
@endpush

    <div class="box">
        <div class="box-header">
            <h3 class="box-title">{{$title}}</h3>
        </div>
        <div class="box-body">
            <div id="jstree"></div>
        </div>
                
    </div>

         <!-- Trigger the modal with a button -->
    

  

@endsection
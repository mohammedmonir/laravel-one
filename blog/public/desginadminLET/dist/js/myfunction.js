function check_all(){
    $('input[class="item_checkbox"]:checkbox').each(function(){
      if($('input[class="check_all"]:checkbox:checked').length==0){
        $(this).prop('checked',false)
      }else{
        $(this).prop('checked',true)
      }

    });

  }



  function delete_all(){
    $(document).on('click','.del_all',function(){
      $('#form_data').submit();
    });

    $(document).on('click','.delBtn',function(){
    var item_checked = $('input[class="item_checkbox"]:checkbox').filter(':checked').length;
    if(item_checked > 0){
      $('.record_count').text(item_checked)
      $('.not_empty_recordes').removeClass('hidden');
      $('.empty_recordes').addClass('hidden');
    }else{
      $('.record_count').text('')
      $('.not_empty_recordes').addClass('hidden');
      $('.empty_recordes').removeClass('hidden');

    }
        $('#multipleDelete').modal('show');

    });

  }
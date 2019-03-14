<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\ColorsDatatable;
use App\model\Color;
use Illuminate\Http\Request;
use Storage;

class ColorsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ColorsDatatable $trade)
    {
        return $trade->render('admin.colors.index',['title'=>trans('admin.colors')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.colors.create',['title'=>trans('admin.colors')]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
       $data = $this->validate(request(),
        [
            'name_ar'       =>'required',
            'name_en'       =>'required',
            'color'       =>'required|string',
       
        ]);
    

        Color::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/colors'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $colors = Color::find($id);
        $title = trans('admin.edit');
        return view('admin.colors.edit',compact('colors','title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       
        $data = $this->validate(request(),
        [
            'name_ar'       =>'required',
            'name_en'       =>'required',
            'color'       =>'required|string',
          
            
         
        ]);
      
        Color::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/colors'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $colors= Color::find($id);
        
        $colors->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/colors'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $colors= Mall::find($id);
            $colors->delete();
          }
          
        }else{
            $colors= Color::find(request('item'));
            $colors->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/colors'));
    }
}

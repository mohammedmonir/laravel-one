<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\CityDatatable;
use App\model\Department;
use Illuminate\Http\Request;
use Storage;

class DepartmentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.departments.index',['title'=>trans('admin.departments')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.departments.create',['title'=>trans('admin.add')]);
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
            'dep_name_ar'       =>'required',
            'dep_name_en'       =>'required',
            'icon'              =>'sometimes|nullable',
            'description'       =>'sometimes|nullable',
            'keyword'           =>'sometimes|nullable',
            'parent_id'         =>'sometimes|nullable|numeric',
        ]);
       
   
        Department::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/departments'));
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
        $country = City::find($id);
        $title = trans('admin.edit');
        return view('admin.cities.edit',compact('country','title'));
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
            'dep_name_ar'       =>'required',
            'dep_name_en'       =>'required',
            'icon'              =>'sometimes|nullable',
            'description'       =>'sometimes|nullable',
            'keyword'           =>'sometimes|nullable',
            'parent_id'         =>'sometimes|nullable|numeric',
        ]);
    

        
        Department::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/cities'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cities= City::find($id);
     
        $cities->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/cities'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $cities= City::find($id);
            Storage::delete($cities->logo);
            $cities->delete();
          }
          
        }else{
            $cities= City::find(request('item'));
            Storage::delete($cities->logo);
            $cities->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/cities'));
    }
}

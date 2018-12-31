<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;

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
            'icon'              =>'sometimes|nullable'.v_image(),
            'description'       =>'sometimes|nullable',
            'keyword'           =>'sometimes|nullable',
            'parent'         =>'sometimes|nullable|numeric',
        ]);

         if(request()->hasFile('icon')){
            $data['icon']=up()->upload([
                'file'=>'icon',
                'path'=>'departments',
                'upload_type'=>'single',
                'delete_file' => '',
            ]);
            }   
       
   
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
        $department = Department::find($id);
        $title = trans('admin.edit');
        return view('admin.departments.edit',compact('department','title'));
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
            'parent'         =>'sometimes|nullable|numeric',
        ]);

        if(request()->hasFile('icon')){
            $data['icon']=up()->upload([
                'file'=>'icon',
                'path'=>'departments',
                'upload_type'=>'single',
                'delete_file' => Department::find($id)->icon,
            ]);
        }   
    

        
        Department::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/departments'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public static function delete_parent($id){
        $department_parent = Department::where('parent',$id)->get();
        foreach($department_parent as $sub){
            self::delete_parent($sub->id);
            if(!empty($sub->icon)){
                Storage::has($sub->icon)?Storage::delete($sub->icon):'';
            }
            $subdepartment = Department::find($sub->id);
            if(!empty($subdepartment)){
                $subdepartment->delete();
            }
            
        }
        $dep = Department::find($id);
        
        if(!empty($dep->icon)){
            Storage::has($dep->icon)?Storage::delete($dep->icon):'';
        }
        $dep->delete();
    }


    public function destroy($id)
    {
        self::delete_parent($id);
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/departments'));

    }

}

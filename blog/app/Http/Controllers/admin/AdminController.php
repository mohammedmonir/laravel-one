<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\AdminDatatable;
use App\Admin;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(AdminDatatable $admin)
    {
        return $admin->render('admin.admins.index',['title'=>trans('admin.admin')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.admins.create',['title'=>trans('admin.CREATEADMIN')]);
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
            'username' =>'required',
            'email'=>'required|email|unique:admins',
            'password' =>'required|min:6',
            
        ]);
        $data['password']=bcrypt(request('password'));
        $data['remember_token']='zyhpmRyfJP';
        Admin::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/admin'));
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
        $admin = Admin::find($id);
        $title = trans('admin.edit');
        return view('admin.admins.edit',compact('admin','title'));
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
            'username' =>'required',
            'email'=>'required|email|unique:admins,email,'.$id,
            'password' =>'required|min:6',
            
        ]);
        if(request()->has('password')){
            $data['password']=bcrypt(request('password'));
        }
        Admin::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect('admin/admin');

    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Admin::find($id)->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/admin'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
            Admin::destroy(request('item'));
        }else{
            Admin::find(request('item'))->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/admin'));
    }
}

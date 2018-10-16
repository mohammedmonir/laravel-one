<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\UsersDatatable;
use App\Admin;
use App\User;

use Illuminate\Http\Request;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(UsersDatatable $admin)
    {
        return $admin->render('admin.users.index',['title'=>trans('admin.users')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.users.create',['title'=>trans('admin.add')]);
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
            'level' =>'required|in:user,company,vendor',
            'email'=>'required|email|unique:users',
            'password' =>'required|min:6',
            
        ]);
        $data['password']=bcrypt(request('password'));
        $data['remember_token']='hjdsfhskjdfhsd';
        User::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/users'));
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
        $user = User::find($id);
        $title = trans('admin.edit');
        return view('admin.users.edit',compact('user','title'));
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
            'level' =>'required|in:user,company,vendor',
            'email'=>'required|email|unique:admins,email,'.$id,
            'password' =>'required|min:6',
            
        ]);
        if(request()->has('password')){
            $data['password']=bcrypt(request('password'));
        }
        User::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/users'));
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        User::find($id)->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/users'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
            User::destroy(request('item'));
        }else{
            User::find(request('item'))->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/users'));
    }
}

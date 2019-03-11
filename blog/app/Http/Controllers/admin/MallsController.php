<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\MallsDatatable;
use App\model\Mall;
use Illuminate\Http\Request;
use Storage;

class MallsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(MallsDatatable $trade)
    {
        return $trade->render('admin.malls.index',['title'=>trans('admin.malls')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.malls.create',['title'=>trans('admin.malls')]);
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
            'mobile'       =>'required|numeric',
            'email'          =>'required|email',
            'facebook'       =>'sometimes|nullable|url',
            'twitter'       =>'sometimes|nullable|url',
            'website'       =>'sometimes|nullable|url',
            'contact_name'    =>'sometimes|nullable|string',
            'lat'            =>'sometimes|nullable',
            'lng'            =>'sometimes|nullable',
            'icon'           =>'required|'.v_image(), 
        ]);
        if(request()->hasFile('icon')){
            $data['icon']=up()->upload([
                'file'=>'icon',
                'path'=>'malls',
                'upload_type'=>'single',
                'delete_file' => '',
            ]);
            }   

        Mall::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/malls'));
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
        $malls = Mall::find($id);
        $title = trans('admin.edit');
        return view('admin.malls.edit',compact('malls','title'));
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
            'mobile'       =>'required|numeric',
            'email'          =>'required|email',
            'facebook'       =>'sometimes|nullable|url',
            'twitter'       =>'sometimes|nullable|url',
            'website'       =>'sometimes|nullable|url',
            'contact_name'    =>'sometimes|nullable|string',
            'lat'            =>'sometimes|nullable',
            'lng'            =>'sometimes|nullable',
            
         
        ]);
        if(request()->hasFile('icon')){
            $data['icon']=up()->upload([
                'file'=>'icon',
                'path'=>'malls',
                'upload_type'=>'single',
                'delete_file'=>Mall::find($id)->logo,
            ]);
            }   

        
        Mall::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/malls'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $malls= Mall::find($id);
        Storage::delete($malls->logo);
        $malls->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/malls'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $malls= Mall::find($id);
            Storage::delete($malls->logo);
            $malls->delete();
          }
          
        }else{
            $malls= Mall::find(request('item'));
            Storage::delete($malls->logo);
            $malls->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/malls'));
    }
}

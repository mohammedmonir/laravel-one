<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\ManuFactsDatatable;
use App\model\Manufacturers;
use Illuminate\Http\Request;
use Storage;

class ManufacturersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ManuFactsDatatable $trade)
    {
        return $trade->render('admin.manufacturers.index',['title'=>trans('admin.manufacturers')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.manufacturers.create',['title'=>trans('admin.manufacturers')]);
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
                'path'=>'countries',
                'upload_type'=>'single',
                'delete_file' => '',
            ]);
            }   

        Manufacturers::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/manufacturers'));
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
        $manufacturers = Manufacturers::find($id);
        $title = trans('admin.edit');
        return view('admin.manufacturers.edit',compact('manufacturers','title'));
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
                'path'=>'countries',
                'upload_type'=>'single',
                'delete_file'=>Manufacturers::find($id)->logo,
            ]);
            }   

        
        Manufacturers::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/countries'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $trademarks= Manufacturers::find($id);
        Storage::delete($trademarks->logo);
        $trademarks->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/countries'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $manufacturers= Manufacturers::find($id);
            Storage::delete($manufacturers->logo);
            $manufacturers->delete();
          }
          
        }else{
            $manufacturers= Manufacturers::find(request('item'));
            Storage::delete($manufacturers->logo);
            $manufacturers->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/manufacturers'));
    }
}

<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\CountryDatatable;
use App\model\Country;
use Illuminate\Http\Request;
use Storage;

class CountriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(CountryDatatable $country)
    {
        return $country->render('admin.countries.index',['title'=>trans('admin.countries')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.countries.create',['title'=>trans('admin.create_countries')]);
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
            'country_name_ar'       =>'required',
            'country_name_en'       =>'required',
            'mob'                   =>'required',
            'code'                  =>'required',
            'logo'                  =>'required|'.v_image(), 
        ]);
        if(request()->hasFile('logo')){
            $data['logo']=up()->upload([
                'file'=>'logo',
                'path'=>'countries',
                'upload_type'=>'single',
                'delete_file' => '',
            ]);
            }   

        Country::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/countries'));
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
        $country = Country::find($id);
        $title = trans('admin.edit');
        return view('admin.countries.edit',compact('country','title'));
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
            'country_name_ar' =>'required',
            'country_name_en' =>'required',
            'mob' =>'required',
            'code' =>'required',
            'logo' =>'sometimes|nullable|'.v_image(), 
        ]);
        if(request()->hasFile('logo')){
            $data['logo']=up()->upload([
                'file'=>'logo',
                'path'=>'countries',
                'upload_type'=>'single',
                'delete_file'=>Country::find($id)->logo,
            ]);
            }   

        
        Country::where('id',$id)->update($data);
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
        $contries= Country::find($id);
        Storage::delete($contries->logo);
        $contries->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/countries'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $contries= Country::find($id);
            Storage::delete($contries->logo);
            $contries->delete();
          }
          
        }else{
            $contries= Country::find(request('item'));
            Storage::delete($contries->logo);
            $contries->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/countries'));
    }
}

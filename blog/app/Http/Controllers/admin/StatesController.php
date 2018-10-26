<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\DataTables\StateDatatable;
use App\model\State;
use Illuminate\Http\Request;
use Storage;

class StatesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(StateDatatable $state)
    {
        return $state->render('admin.states.index',['title'=>trans('admin.states')]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.states.create',['title'=>trans('admin.create_states')]);
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
            'state_name_ar'       =>'required',
            'state_name_en'       =>'required',
            'country_id'          =>'required|numeric',
            'city_id'              =>'required|numeric',
        ]);
       
   
        State::create($data);
        session()->flash('success',trans('admin.record_added'));
        return redirect(url('admin/states'));
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
        $country = State::find($id);
        $title = trans('admin.edit');
        return view('admin.states.edit',compact('country','title'));
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
            'state_name_ar' =>'required',
            'state_name_en' =>'required',
            'country_id'       =>'required|numeric',
            'city_id'       =>'required|numeric',
        ]);
    

        
        State::where('id',$id)->update($data);
        session()->flash('success',trans('admin.updated'));
        return redirect(url('admin/states'));
    
       
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cities= State::find($id);
     
        $cities->delete();
        session()->flash('success',trans('admin.deletesuccess'));
        return redirect(url('admin/states'));

    }
    public function multi_delete(){
        if(is_array(request('item'))){
          foreach(request('item') as $id){
            $cities= State::find($id);
            Storage::delete($cities->logo);
            $cities->delete();
          }
          
        }else{
            $states= State::find(request('item'));
            Storage::delete($states->logo);
            $states->delete();
        }
        session()->flash('success',trans('admin.deleted_record'));
        return redirect(url('admin/states'));
    }
}

<?php

namespace App\DataTables;

use App\Model\Mall;

use Yajra\DataTables\Services\DataTable;

class MallsDatatable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     
     */
    public function dataTable($query)
    {
        return datatables($query)
            ->addColumn('checkbox', 'admin.malls.btn.checkbox')
            ->addColumn('edit', 'admin.malls.btn.edit')
            ->addColumn('delete', 'admin.malls.btn.delete')
           
            ->rawColumns([
                'edit',
                'delete',
                'checkbox',
               
            ]);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\User $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query()
    {
        return Mall::query();
    }
    


 

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
            //   ->addAction(['width' => '80px'])
            // ->parameters($this->getBuilderParameters());
            ->parameters([
                'dom' => 'Blfrtip',
                'lengthMenu' =>[[3,5,10,25,50,100],[3,5,10,25,50,'All Record']],
                'buttons'=>[
                    [
                        'text' => '<i class="fa fa-plus"></i>'. trans("admin.add"),
                        'className' =>'btn btn-info','action'=>"function(){
                            window.location.href='".\URL::current()."/create'
                        }"
                    ],
                    ['extend'=>'print','className'=>'btn btn-primary','text' =>'<i class="fa fa-print"></i>'],
                    ['extend' =>'csv','className'=>'btn btn-info','text' => '<i class="fa fa-file"></i>'. trans("admin.exportcsv")],
                    ['extend' =>'excel','className'=>'btn btn-success','text' => '<i class="fa fa-file"></i>' . trans("admin.exportEXCEL")],
                    ['extend' =>'reload','className'=>'btn btn-default','text' => '<i class="fa fa-refresh"></i> '],
                    [
                        'text' => '<i class="fa fa-trash"></i>'. trans("admin.delete_all"),
                        'className' =>'btn btn-danger delBtn'
                    ],
                
                ],
                'initComplete' =>    "function () {
                                this.api().columns([2,3]).every(function () {
                                var column = this;
                                var input = document.createElement('input');
                                $(input).appendTo($(column.footer()).empty())
                                .on('keyup', function () {
                                    column.search($(this).val(), false, false, true).draw();
                                });
                            });
                        }",
                'language'=> [
                            "sProcessing"   => trans('admin.process'),
                            "sLengthMenu"   => 'عدد الصفوف من _START_ الى _END_ والمجموع الكلي _TOTAL_ تسجيل',
                            "sLengthMenu"   =>  trans('admin.length'),
                            "sZeroRecords"  => "No se encontraron resultados",
                            "sEmptyTable"   => trans('admin.allno'),
                            "sInfo"         => trans('admin.sInfo'),
                            "sInfoEmpty"    => "Mostrando registros del 0 al 0 de un total de 0 registros",
                            "sInfoFiltered" => "(filtrado de un total de _MAX_ registros)",
                            "sInfoPostFix"  => "",
                            "sSearch"       => trans('admin.serach'),
                            "sUrl"           => "",
                            "sInfoThousands" => ",",
                            "sLoadingRecords"=> "Cargando...",
                            "oPaginate"     => [
                                "sFirst"    => trans('admin.start'),
                                "sLast"     =>  trans('admin.end'),
                                "sNext"     =>  trans('admin.start'),
                                "sPrevious" =>  trans('admin.end'),
                            ],
                            "oAria"=> [
                                "sSortAscending"    => " Activar para ordenar la columna de manera ascendente",
                                "sSortDescending"   => " Activar para ordenar la columna de manera descendente"
                            ],
                            ],
                        ]);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
                [ 
                'name' =>'checkbox',
                'data' =>'checkbox',
                'title' => '<input type="checkbox" class="check_all" onclick="check_all()" />',
                'exportable' =>false,
                'printable' =>false,
                'orderable' =>false,
                'searchable' =>false,
                ],
                [ 
                'name' =>'id',
                'data' =>'id',
                'title' => trans('admin.id'),
                ],
                [ 
                'name' =>'name_ar',
                'data' =>'name_ar',
                'title' => trans('admin.name_ar'),
                ],
                [ 
                'name' =>'name_en',
                'data' =>'name_en',
                'title' => trans('admin.name_en'),
                ] 
                ,
                [ 
                'name' =>'mobile',
                'data' =>'mobile',
                'title' => trans('admin.mobile'),
                ] 
                ,
                [ 
                'name' =>'contact_name',
                'data' =>'contact_name',
                'title' => trans('admin.contact_name'),
                ] 
                ,
                 [
                'name' =>'created_at',
                'data' =>'created_at',
                'title' => trans('admin.created_at'),
                ],
                [ 
                'name' =>'updated_at',
                'data' =>'updated_at',
                'title' => trans('admin.updated_at'),
              ],
            
              [
                'name' =>'edit',
                'data' =>'edit',
                'title' => trans('admin.edit'),
                'exportable' =>false,
                'printable' =>false,
                'orderable' =>false,
                'searchable' =>false,
            ], 
             [
                'name' =>'delete',
                'data' =>'delete',
                'title' => trans('admin.delete'),
                'exportable' =>false,
                'printable' =>false,
                'orderable' =>false,
                'searchable' =>false,
            ]
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'malls' . date('YmdHis');
    }
}

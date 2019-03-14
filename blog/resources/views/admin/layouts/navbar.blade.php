<header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

     @include('admin.layouts.menu')
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ url('') }}/desginadminLET/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{auth()->guard('admin')->user()->username}}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      <li class="treeview {{ active_menu('admin')[0] }}" > 
          <a href="#">
            <i class="fa fa-home"></i>
            {{trans('admin.main')}} 
           
          </a>
          <ul class="treeview-menu" style='{{ active_menu('admin')[1] }}'>
            <li class="active"><a href="{{url('admin')}}"><i class="fa fa-home"></i>{{trans('admin.main')}} </a></li>
            <li class="active"><a href="{{url('admin/settings')}}"><i class="fa fa-cogs"></i>{{trans('admin.setting')}} </a></li>
       
          </ul>
        </li>


<!-- عشان لما اضغط على القائمة..ضلها فاتحة مش تسكر..رحت عملت هلبر فنكشن -->
        <li class="treeview {{ active_menu('admin')[0] }}" > 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.adminaccount')}} 
           
          </a>
          <ul class="treeview-menu" style='{{ active_menu('admin')[1] }}'>
            <li class="active"><a href="{{url('admin/admin')}}"><i class="fa fa-users"></i>{{trans('admin.adminaccount')}} </a></li>
       
          </ul>
        </li>


        
        <li class="treeview {{ active_menu('users')[0] }}"> 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.users')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('users')[1] }}'>
            <li class=""><a href="{{url('admin/users')}}"><i class="fa fa-users"></i>{{trans('admin.users')}} </a></li>
            <li class=""><a href="{{url('admin/users')}}?level=user"><i class="fa fa-users"></i>{{trans('admin.user')}} </a></li>
            <li class=""><a href="{{url('admin/users')}}?level=vendor"><i class="fa fa-users"></i>{{trans('admin.vendor')}} </a></li>
            <li class=""><a href="{{url('admin/users')}}?level=company"><i class="fa fa-users"></i>{{trans('admin.company')}} </a></li>
       
          </ul>
        </li>

         <li class="treeview {{ active_menu('countries')[0] }}"> 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.countries')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('countries')[1] }}'>
            <li class=""><a href="{{url('admin/countries')}}"><i class="fa fa-flag"></i>{{trans('admin.countries')}} </a></li>
            <li class=""><a href="{{url('admin/countries/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>
         <li class="treeview {{ active_menu('cities')[0] }}"> 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.cities')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('cities')[1] }}'>
            <li class=""><a href="{{url('admin/cities')}}"><i class="fa fa-flag"></i>{{trans('admin.cities')}} </a></li>
            <li class=""><a href="{{url('admin/cities/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>
        
        <li class="treeview {{ active_menu('states')[0] }}"> 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.states')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('states')[1] }}'>
            <li class=""><a href="{{url('admin/states')}}"><i class="fa fa-flag"></i>{{trans('admin.states')}} </a></li>
            <li class=""><a href="{{url('admin/states/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>


        <li class="treeview {{ active_menu('departments')[0] }}"> 
          <a href="#">
            <i class="fa fa-list"></i>
            {{trans('admin.departments')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('departments')[1] }}'>
            <li class=""><a href="{{url('admin/departments')}}"><i class="fa fa-list"></i>{{trans('admin.departments')}} </a></li>
            <li class=""><a href="{{url('admin/departments/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>

        <li class="treeview {{ active_menu('trademarks')[0] }}"> 
          <a href="#">
            <i class="fa fa-cube"></i>
            {{trans('admin.trademarks')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('trademarks')[1] }}'>
            <li class=""><a href="{{url('admin/trademarks')}}"><i class="fa fa-cube"></i>{{trans('admin.trademarks')}} </a></li>
            <li class=""><a href="{{url('admin/trademarks/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>

        <li class="treeview {{ active_menu('manufacturers')[0] }}"> 
          <a href="#">
            <i class="fa fa-users"></i>
            {{trans('admin.manufacturers')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('manufacturers')[1] }}'>
            <li class=""><a href="{{url('admin/manufacturers')}}"><i class="fa fa-cube"></i>{{trans('admin.manufacturers')}} </a></li>
            <li class=""><a href="{{url('admin/manufacturers/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>
      
        <li class="treeview {{ active_menu('shipping')[0] }}"> 
          <a href="#">
            <i class="fa fa-truck"></i>
            {{trans('admin.shipping')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('shipping')[1] }}'>
            <li class=""><a href="{{url('admin/shipping')}}"><i class="fa fa-truck"></i>{{trans('admin.shipping')}} </a></li>
            <li class=""><a href="{{url('admin/shipping/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>


         <li class="treeview {{ active_menu('malls')[0] }}"> 
          <a href="#">
            <i class="fa fa-building"></i>
            {{trans('admin.malls')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('malls')[1] }}'>
            <li class=""><a href="{{url('admin/malls')}}"><i class="fa fa-building"></i>{{trans('admin.malls')}} </a></li>
            <li class=""><a href="{{url('admin/malls/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>
      
   
         <li class="treeview {{ active_menu('colors')[0] }}"> 
          <a href="#">
            <i class="fa fa-paint-brush"></i>
            {{trans('admin.colors')}} 
            
          </a>
          <ul class="treeview-menu" style='{{ active_menu('colors')[1] }}'>
            <li class=""><a href="{{url('admin/colors')}}"><i class="fa fa-paint-brush"></i>{{trans('admin.colors')}} </a></li>
            <li class=""><a href="{{url('admin/colors/create')}}"><i class="fa fa-plus"></i>{{trans('admin.add')}} </a></li>
        
          </ul>
        </li>
      
   
     
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
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
      
   
     
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
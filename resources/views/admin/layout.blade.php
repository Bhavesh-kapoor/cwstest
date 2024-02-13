<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none">

<head>
    <meta charset="utf-8" />
    <title>{{ getwebdetail('title') ?? '' }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <link rel="shortcut icon" href="{{asset('admin/images/favicon.ico')}}">
    <link href="{{asset('admin/libs/jsvectormap/css/jsvectormap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/libs/swiper/swiper-bundle.min.css')}}" rel="stylesheet" type="text/css" />
    <script src="{{asset('admin/js/layout.js')}}"></script>
    <link href="{{asset('admin/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/app.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/custom.min.css')}}" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />

    @stack('styles')
    <style>
        #html_btn {
            display: none;
        }
    </style>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
</head>

<body>

    <!-- Begin page -->
    <div id="layout-wrapper">

        <header id="page-topbar">
            <div class="layout-width">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box horizontal-logo">
                            <a href="{{url('/admin/dashboard')}}" class="logo logo-dark">
                                <span class="logo-sm">
                                    Logo <img src="{{asset('admin/images/logo-sm.png')}}" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    Logo <img src="{{asset('admin/images/logo-dark.png')}}" alt="" height="17">
                                </span>
                            </a>

                            <a href="{{url('/admin/dashboard')}}" class="logo logo-light">
                                <span class="logo-sm">
                                    Logo <img src="{{asset('admin/images/logo-sm.png')}}" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    Logo <img src="{{asset('admin/images/logo-light.png')}}" alt="" height="17">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger" id="topnav-hamburger-icon">
                            <span class="hamburger-icon">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </button>
                    </div>

                    <div class="d-flex align-items-center">
                        <div class="dropdown ms-sm-3 header-item topbar-user">
                            <button type="button" class="btn" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="d-flex align-items-center">
                                    <img class="rounded-circle header-profile-user" src="{{asset('admin/images/users/avatar-1.jpg')}}" alt="Header Avatar">
                                    <span class="text-start ms-xl-2">
                                        <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text"> {{ ucfirst(getlogindetail('name')) }}</span>
                                        <span class="d-none d-xl-block ms-1 fs-12 text-muted user-name-sub-text">{{ ucfirst(getlogindetail('role')) }}</span>
                                    </span>
                                </span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <h6 class="dropdown-header">Welcome {{ ucfirst(getlogindetail('name')) }}!</h6>
                                <a class="dropdown-item" href="{{url('/admin/change_password')}}"><i class="mdi mdi-key text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Change Password</span></a>
                                <a class="dropdown-item" href="{{url('/admins/logout')}}"><i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== App Menu ========== -->
        <div class="app-menu navbar-menu">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <!-- Dark Logo-->
                <a href="{{url('/admin/dashboard')}}" class="logo logo-dark">
                    <span class="logo-sm">
                    {{ getwebdetail('title') ?? '' }}
                    </span>
                    <span class="logo-lg">
                        {{ getwebdetail('title') ?? '' }}
                    </span>
                </a>
                <!-- Light Logo-->
                <a href="{{url('/admin/dashboard')}}" class="logo logo-light">
                    <span class="logo-sm">
                            {{ getwebdetail('abrevation') ?? '' }}
                    </span>
                    <span class="logo-lg">
                        {{ getwebdetail('title') ?? '' }}
                    </span>
                </a>
                <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
                    <i class="ri-record-circle-line"></i>
                </button>
            </div>



            <div id="scrollbar">
                <div class="container-fluid">

                    <div id="two-column-menu"> </div>
                    <ul class="navbar-nav" id="navbar-nav">

                        <li class="menu-title"><span data-key="t-menu">Menu</span></li>
                        <li class="nav-item">
                            <a class="nav-link menu-link" href="{{ url('admin/dashboard');}}">
                                <i class="ri-dashboard-2-line"></i> <span data-key="t-dashboards">Dashboard</span>
                            </a>
                        </li>

                        @foreach(sidbarAccess() as $accesslist)
                            @if(!empty($accesslist->sidebarname->sidebar_slug))
                        <li class="nav-item">
                            <a class="nav-link menu-link" href="{{ url('admin/' .$accesslist->sidebarname->sidebar_slug ?? '');}}">
                                <i class="ri-account-circle-line"></i> <span data-key="t-registration">{{$accesslist->sidebarname->sidebar_name}}</span>
                            </a>
                        </li>
                        @endif()

                        @endforeach()



                       

                    </ul>
                </div>
                <!-- Sidebar -->
            </div>

            <div class="sidebar-background"></div>
        </div>
        <!-- Left Sidebar End -->
        <!-- Vertical Overlay-->
        <div class="vertical-overlay"></div>

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    @section('content')
                    @show()

                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>
                                document.write(new Date().getFullYear())
                            </script> © {{ getwebdetail('title') ?? '' }}.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Design & Develop by Bhavesh Kapoor
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->


    <!-- JAVASCRIPT -->
    <script src="{{asset('admin/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('admin/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{asset('admin/libs/node-waves/waves.min.js')}}"></script>
    <script src="{{asset('admin/libs/feather-icons/feather.min.js')}}"></script>
    <script src="{{asset('admin/js/pages/plugins/lord-icon-2.1.0.js')}}"></script>
    <script src="{{asset('admin/js/plugins.js')}}"></script>
    <script src="{{asset('admin/libs/apexcharts/apexcharts.min.js')}}"></script>
    <script src="{{asset('admin/libs/jsvectormap/js/jsvectormap.min.js')}}"></script>
    <script src="{{asset('admin/libs/jsvectormap/maps/world-merc.js')}}"></script>
    <script src="{{asset('admin/libs/swiper/swiper-bundle.min.js')}}"></script>
    <script src="{{asset('admin/js/pages/dashboard-ecommerce.init.js')}}"></script>
    <script src="{{asset('admin/js/app.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>


    <script src="{{asset('admin/js/custom.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    



</body>

</html>
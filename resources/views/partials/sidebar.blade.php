<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">LavelRent <sup>Car</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="{{route('admin.dashboard.index')}}">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <li class="nav-item active">
                <a class="nav-link" href="{{route('cars.index')}}">
                    <i class="fas fa-fw fa-car"></i>
                    <span>Daftar Mobil</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="{{route('admin.messages.index')}}">
                <i class="fas fa-envelope fa-fw"></i>
                    <span>Daftar Pesan</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" onclick="document.getElementById('logout-form').submit()" href="#">
                <i class="fa fa-sign-out" aria-hidden="true"></i>
                    <span>Logout</span>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="post">
                    @csrf
                </form>
            </li>


        </ul>
        
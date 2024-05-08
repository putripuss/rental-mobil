@extends('layouts.admin')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
</div>

<div class="row">
    <!-- Total Cars Card -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-3">
                            Total Mobil</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $totalCars }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-car fa-3x text-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Available Cars Card -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-3">
                            Mobil yang tersedia</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $availableCars }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-car fa-3x text-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Unavailable Cars Card -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-danger shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-3">
                            Mobil yang tidak tersedia</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $unavailableCars }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-car fa-3x text-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Total Messages Card -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-3">Total pesan</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $totalMessages }}</div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-envelope fa-3x text-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

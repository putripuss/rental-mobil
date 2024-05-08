@extends('layouts.admin')

@section('content')
    <!-- Bootstrap icons-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />

    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{asset('frontend/css/styles.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="{{asset('frontend/css/custom.css')}}" />

    <div class="container px-4 px-lg-5 mt-5">
        <!-- Title "DETAIL MOBIL" outside the box -->
        <h1 class="fw-bolder text-primary text-center mt-4 mb-4">DETAIL MOBIL</h1>

        <section class="py-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top mx-auto" src="{{Storage::url($car->gambar)}}" alt="{{$car->nama_mobil}}" />
                        <!-- Product details-->
                        <div class="card-body card-body-custom pt-4">
                            <div>
                                <!-- Product name-->
                                <h3 class="fw-bolder text-primary">Deskripsi</h3>
                                <p>
                                    {{$car->deskripsi}}
                                </p>
                                <div class="mobil-info-list border-top pt-4">
                                    <ul class="list-unstyled">
                                        <li>
                                            @if($car->p3k)
                                                <i class="ri-checkbox-circle-line"></i>
                                                <span>P3K</span>
                                            @else
                                                <i class="ri-close-circle-line text-secondary"></i>
                                                <span>P3K</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if($car->charger)
                                                <i class="ri-checkbox-circle-line"></i>
                                                <span>CHARGER</span>
                                            @else
                                                <i class="ri-close-circle-line text-secondary"></i>
                                                <span>CHARGER</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if($car->audio)
                                                <i class="ri-checkbox-circle-line"></i>
                                                <span>AUDIO</span>
                                            @else
                                                <i class="ri-close-circle-line text-secondary"></i>
                                                <span>AUDIO</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if($car->ac)
                                                <i class="ri-checkbox-circle-line"></i>
                                                <span>AC</span>
                                            @else
                                                <i class="ri-close-circle-line text-secondary"></i>
                                                <span>AC</span>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-5">
                    <div class="card">
                        <!-- Product details-->
                        <div class="card-body card-body-custom pt-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <div class="d-flex justify-content-between align-items-center">
                                    <h5 class="fw-bolder">{{$car->nama_mobil}}</h5>
                                    <div class="rent-price mb-3">
                                        <span style="font-size: 1rem" class="text-primary">Rp.{{number_format($car->harga_sewa)}}/</span>day
                                    </div>
                                </div>
                                <ul class="list-unstyled list-style-group">
                                    <li class="border-bottom p-2 d-flex justify-content-between">
                                        <span>Bahan Bakar</span>
                                        <span style="font-weight: 600">{{$car->bahan_bakar}}</span>
                                    </li>
                                    <li class="border-bottom p-2 d-flex justify-content-between">
                                        <span>Jumlah Kursi</span>
                                        <span style="font-weight: 600">{{$car->jumlah_kursi}}</span>
                                    </li>
                                    <li class="border-bottom p-2 d-flex justify-content-between">
                                        <span>Transmisi</span>
                                        <span style="font-weight: 600">{{$car->transmisi}}</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

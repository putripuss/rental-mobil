<?php

namespace App\Http\Controllers\Admin;

use App\Models\Car;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Requests\Admin\CarStoreRequest;
use App\Http\Requests\Admin\CarUpdateRequest; 
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\Datatables;
use Illuminate\Support\Facades\Validator;

class CarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
    //$vara = json_encode( self::cek() ); 

    //dd($vara);
    if ($request->ajax()){
        $data = Car::all();
        return Datatables::of($data)
            ->addColumn('id', function($query){
                return $query->id;
            })
            ->addIndexColumn()
            ->addColumn('aksi', function($car){
                $actionBtn = '<a href="'.route('cars.show', $car->id).'" class="btn btn-info btn-sm">Detail</a> ';
                $actionBtn .= '<a href="'.route('cars.edit', $car->id).'" class="btn btn-warning btn-sm">Edit</a> ';
                $actionBtn .= '<form onclick="return confirm(\'anda yakin data akan dihapus?\');" class="d-inline" action="'.route('cars.destroy', $car->id).'" method="post">';
                $actionBtn .= csrf_field();
                $actionBtn .= method_field('delete');
                $actionBtn .= '<button type="submit" class="btn btn-danger btn-sm">Delete</button>';
                $actionBtn .= '</form>';
                return $actionBtn;
            })
            ->editColumn('gambar', function($car) {
                $imageUrl = asset('storage/' . $car->gambar);
                $image = '<img src="' . $imageUrl . '" width="200" height="120">';
                return '<a href="' . $imageUrl . '" target="_blank">' . $image . '</a>';
            })
            ->rawColumns(['aksi','gambar'])
            ->make(true);
    }
    return view('admin.cars.index');
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.cars.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CarStoreRequest $request)
    {
        // dd($request->all());
        // dd($request->all());
        if ($request->validated()) {
            $gambar = $request->file('gambar')->store('assets/car', 'public');
            $slug = Str::slug($request->nama_mobil, '-');
            $car = new Car;
            $car->nama_mobil = $request->nama_mobil;
            $car->harga_sewa = $request->harga_sewa;
            $car->bahan_bakar = $request->bahan_bakar;
            $car->jumlah_kursi = $request->jumlah_kursi;
            $car->transmisi = $request->transmisi;
            $car->status = $request->status;
            $car->deskripsi = $request->deskripsi;
            $car->p3k = $request->p3k;
            $car->audio = $request->audio;
            $car->charger = $request->charger;
            $car->ac = $request->ac;
            $car->slug = $slug;
            $car->gambar = $gambar;
            $car->save();

            // Car::create($request->except('gambar') + ['gambar' => $gambar, 'slug' => $slug]);
        }

        return redirect()->route('cars.index')->with([
            'message' => 'data sukses dibuat',
            'alert-type' => 'success'
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Car $car)
    {
        return view('admin.cars.show', compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Car $car)
    {
        return view('admin.cars.edit', compact('car'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CarUpdateRequest $request, Car $car)
    {
        // dd($request->all());
        // dd($car);
        // if ($request->validated()) {
        //     $slug = Str::slug($request->nama_mobil, '-');
        //     $car->update($request->validated() + ['slug' => $slug]);
        // }
        
        $validator = Validator::make($request->all(),[
                    'nama_mobil' => 'required',
                    'harga_sewa' => 'required',
                    'bahan_bakar' => 'required',
                    'jumlah_kursi' => 'required',
                    'transmisi' => 'required',
                    'status' => 'required',
                    'deskripsi' => 'required',
                    'p3k' => 'required',
                    'audio' => 'required',
                    'charger' => 'required',
                    'ac' => 'required'           
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors())->withInput();
        }
        else{

            $car->nama_mobil = $request->nama_mobil;
            $car->harga_sewa = $request->harga_sewa;
            $car->bahan_bakar = $request->bahan_bakar;
            $car->jumlah_kursi = $request->jumlah_kursi;
            $car->transmisi = $request->transmisi;
            $car->status = $request->status;
            $car->deskripsi = $request->deskripsi;
            $car->p3k = $request->p3k;
            $car->audio = $request->audio;
            $car->charger = $request->charger;
            $car->ac = $request->ac;
            $car->save();
    
            return redirect()->route('cars.index')->with([
                'message' => 'data berhasil di edit',
                'alert-type' => 'info'
            ]);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Car $car)
    {
        if($car->gambar) {
            unlink('storage/'. $car->gambar);
        }
        $car->delete();

        return redirect()->back()->with([
            'message'=> 'data berhasil dihapus',
            'alert-type'=> 'danger'
        ]); 
    }

    public function updateImage(Request $request, $carId)
    {
        $request->validate([
            'gambar' => 'required|image'
        ]);
        $car = Car::findOrFail($carId);
        if($request->gambar){
            unlink('storage/'. $car->gambar);  
            $gambar = $request->file('gambar')->store('assets/car', 'public');
            
            $car->update(['gambar' => $gambar]);
        }
        return redirect()->back()->with([
            'message'=> 'gambar berhasil di edit',
            'alert-type' => 'info'
        ]);
    }
}


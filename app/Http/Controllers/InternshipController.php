<?php

namespace App\Http\Controllers;

use App\Models\Internship;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\DB;

class InternshipController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $internships = Internship::paginate(6);
        $internships = DB::table('internships')
            ->join('companies', 'internships.companyId', '=', 'companies.id')
            ->join('industries', 'internships.industryId', '=', 'industries.id')
            ->join('cities', 'internships.cityId', '=', 'cities.id')
            ->select('internships.*', 'companies.name as companyName', 'industries.name as industryName')
            ->paginate(1);
        return view('internships', compact('internships'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Internship $internship)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Internship $internship)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Internship $internship)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Internship $internship)
    {
        //
    }
}

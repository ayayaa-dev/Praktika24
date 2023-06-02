@extends('layouts.app')

@section('content')
    <div class="internship-page">
        <div class="top-container">
            <h1>Available Internships</h1>
            <div class="heading-line"></div>
        </div>
        <ul class="internship-list">
            @foreach ($internships as $internship)
                <li class="internship">
                    <div class="img-container">
                        <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                    </div>
                    <div class="info">
                        <div>
                            <h3>{{ $internship->name }}</h3>
                            <h4>{{ $internship->companyName }}</h4>
                            <p><span>{{ $internship->cityId }}</span> linn</p>
                        </div>
                        <div class="btn-container">
                            <a href="{{ url('internship/' . $internship->id) }}" class="btn btn-primary w-75">More info</a>
                        </div>
                    </div>
                </li>
            @endforeach
        </ul>
        <div class="pagination">
            {!! $internships->links() !!}
        </div>
    </div>
@endsection

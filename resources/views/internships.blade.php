@extends('layouts.app')

@section('content')
    <div class="internship-page">
        <div class="top-container">
            <h1>Available Internships</h1>
            <div class="heading-line"></div>
        </div>
        <ul class="internship-list">
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
            <li class="internship">
                <div class="img-container">
                    <img src="{{ asset('images/forklift-driver.jpg') }}" alt="">
                </div>
                <div class="info">
                    <div>
                        <h3>Forklift driver</h3>
                        <h4>Farmi Piimatööstus AS</h4>
                        <p><span>Maardu</span> linn</p>
                    </div>
                    <div class="btn-container">
                        <a href="{{ url('/internship') }}" class="btn btn-primary w-75">More info</a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
@endsection

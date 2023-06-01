@extends('layouts.app')

@section('content')
    <!-- Carousel -->
    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <!-- Indicators/dots -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="3"></button>
        </div>

        <!-- The slideshow/carousel -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="{{ asset('images/woman-holding-laptop.jpg') }}">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="{{ asset('images/woman-thinking 1.jpg') }}">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="{{ asset('images/forklift-driver.jpg') }}">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="{{ asset('images/man-working-on-computer.jpg') }}">
            </div>
        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <div class="about">
        <h1>What's Praktika24</h1>
        <div class="heading-line"></div>
        <p>
            Praktika24 is an online platform that connects students seeking internships in Estonia with employers offering
            internships. The platform simplifies the internship search process and brings potential candidates and employers
            together.
        </p>
    </div>
@endsection

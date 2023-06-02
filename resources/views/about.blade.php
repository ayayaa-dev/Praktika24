@extends('layouts.app')

@section('content')
    <div class="about-page">
        <h1>About Us</h1>
        <div class="heading-line"></div>
        <div class="about-text">
            <p>
                We are a leading online platform dedicated to helping students and graduates find hands-on experience. Our
                goal is to connect students with organizations that offer interesting and valuable practical places.
            </p>
        </div>
        <div class="bottom-info">
            <h2>What makes us special?</h2>
            <p>
                Variety of Opportunities: We partner with a wide range of organizations across industries and sizes.
                Regardless of your education or interests, you will be able to find an internship that suits your needs.
            </p>
            <ul>
                <li>
                    Ease of use: Our platform provides a simple and intuitive interface that makes finding practice easy and
                    efficient. You can filter jobs by various parameters such as location, industry, duration, and pay.
                </li>
                <li>
                    Personalized Approach: We understand that each student has unique needs and goals. Therefore, we try to
                    provide you with personalized support and guidance to help you find the best practice for you.
                </li>
                <li>
                    Quality of offerings: We carefully review each organization and its practice offering to ensure they are
                    reliable and of value to students. We strive to provide you with only high-quality and promising
                    opportunities.
                </li>
                <li>
                    Skill Development: We support and encourage student skill development. Our hands-on locations offer
                    real-world work experience to develop the key skills and gain valuable knowledge needed for a successful
                    career.
                </li>
            </ul>
        </div>
        <div class="img-container">
            <img src="{{ asset('images/5-team-signs 1.jpg') }}" alt="">
        </div>
    </div>
@endsection

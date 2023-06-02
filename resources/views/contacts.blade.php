@extends('layoutS.app')

@section('content')
    <div class="contacts-page">
        <div class="map-container">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2738.9192241880073!2d26.69041982558356!3d58.38057739174577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46eb36fdc40771d1%3A0x1b51e871ac225238!2sAum%20Konsult%20O%C3%9C!5e0!3m2!1sen!2see!4v1685706594330!5m2!1sen!2see"
                width="700" 
                height="450" 
                style="border:0;" 
                allowfullscreen="" 
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
        <div class="contacts-info">
            <h2>Contact Info</h2>
            <p>Information about admission (on weekdays from 9:00 to 18:00):</p>
            <ul class="contact-cities">
                <li>Tallinn: phone +372 312 4375</li>
                <li>Tartu: phone +372 6452 3231</li>
                <li>Jõhvi: phone +372 5832 1243</li>
            </ul>
            <p>Additional information by e-mail: <b>internship@prak.ee</b></p>
            <p>Robert Jean, Head of Disciplines (Technology)</p>
            <ul class="contacts-text">
                <li>sinita@suitezi.ee</li>
                <li>+372 5478 2350</li>
            </ul>
        </div>
    </div>
@endsection

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Praktika24</title>

    {{-- Bootstrap CSS --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>

<body>
    <div class="wrapper">
        <header>
            <div class="logo">
                <img src="{{ asset('images/logo.png') }}" onclick="window.location='{{ url('/') }}'"
                    alt="logo">
            </div>
            <nav>
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="/internships">Internships</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/contacts">Contacts</a></li>
                </ul>
            </nav>
            <div class="search">
                <form action="/search" method="GET">
                    <input type="text" class="form-control h-100" name="search" placeholder="Search...">
                    <button class="btn btn-primary h-100" type="submit">Search</button>
                </form>
            </div>
            <div class="auth">
                <div>
                    <a href="/login">Log In</a>
                </div>
                <div>
                    <a href="/register">Register</a>
                </div>
            </div>
        </header>

        <div id="content">
            @yield('content')
        </div>

        <footer>
            <div class="info">
                <a class="clickable" href="/about">About</a>
                <a class="clickable" href="/contacts">Contacts</a>
                <a>Phone number: &nbsp;<a class="clickable" href="tel:+3726991418">+372 699 1418</a></a>
                <a>E-mail: &nbsp;<a class="clickable" href="mailto:info@praktika24.ee">info@praktika24.ee</a></a>
            </div>
            <div class="rights">
                <p>©2023 Praktika24. All rights reserved.</p>
            </div>
        </footer>
    </div>


    {{-- Scripts --}}
    <script src="{{ asset('js/app.js') }}"></script>

    {{-- Bootstrap --}}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>

</body>

</html>

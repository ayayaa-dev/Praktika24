@extends ('layouts/app')

@section('content')
    <div class="logIn">
        <div class="card">
            <section class="card-body">
                @if (session()->get('error'))
                    <div class="alert alert-danger">
                        {{ session()->get('error') }}
                    </div>
                @endif
                <form action="{{ url('login') }}" method="POST">
                    @csrf
                    <h1 class="text-center">Login</h1>
                    <div>
                        <label>E-mail</label>
                        <input type="email" class="form-control" name="email" placeholder="Email" required autofocus>
                    </div>
                    <div>
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                    </div>
                    <div class="logInBtns">
                        <button type="submit" class="btn btn-primary submit" name="logIn">Log in</button>
                        <a href="/register" class="btn btn-light">Register</a>
                    </div>
                </form>
            </section>
        </div>
    </div>
@endsection
@extends ('layouts/app')

@section('content')
<div class="signUp">
    <div class="card">
        <section class="card-body">
            @if(session()->get('error'))
            <div class="alert alert-danger">
                {{ session()->get('error') }}
            </div>
            @endif
            <form action="{{ url('signup') }}" method="POST">
                @csrf
                <h1 class="text-center">Sign up</h1>
                <div>
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Name" required autofocus>
                </div>
                <div>
                    <label>Surname</label>
                    <input type="text" class="form-control" name="name" placeholder="Surname" required>
                </div>
                <div>
                    <label>E-mail</label>
                    <input type="email" class="form-control" name="email" placeholder="Email" required>
                </div>
                <div>
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
                <div>
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password" required>
                </div>
                <div class="signUpBtns">
                    <button type="submit" class="btn btn-primary submit" name="signUp">Sign up</button>
                    <a href="/signin" class="btn btn-light">Sign in</a>
                </div>
            </form>
        </section>
    </div>
</div>
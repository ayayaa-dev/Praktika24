@extends('layouts.app')

@section
<div class="dashboard">
    <div class="table">
        <h1>Список заявок</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Почта</th>
                <th>Статус</th>
                <th>Действие</th>
            </tr>
            @foreach ($users as $user)
                <td>{{ $application->id }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->surname }}</td>
                <td>{{ $user->email }}</td>
                {{-- <td>{{ $user->status }}</td> --}}
                <td>
                    <a href="{{ route('application.detail', $application->id) }}">Просмотреть</a>
                </td>
            @endforeach
        </table>
    </div>
</div>
@endsection
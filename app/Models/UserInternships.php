<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserInternships extends Model
{
    use HasFactory;

    protected $table = 'user_internships';
    protected $fillable = [
        'userId',
        'internshipId',
        'status'
    ];
    public function internship()
    {
        return $this->belongsTo(Internship::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

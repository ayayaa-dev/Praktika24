<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmployerCompanies extends Model
{
    use HasFactory;

    protected $table = 'employer_companies';
    protected $fillable = [
        'userId',
        'companyId',
    ];
    public function company()
    {
        return $this->belongsTo(Company::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

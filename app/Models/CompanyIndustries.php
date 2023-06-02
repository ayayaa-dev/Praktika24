<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyIndustries extends Model
{
    use HasFactory;

    protected $table = 'company_industries';
    protected $fillable = [
        'companyId',
        'industryId',
    ];
    public function company()
    {
        return $this->belongsTo(Company::class);
    }
    public function industry()
    {
        return $this->belongsTo(Industry::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Company;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = [
        'first_name', 'last_name', 'email', 'company_id', 'email', 'phone'
    ];
    
    public function company() {
        return $this->hasOne(Company::class, 'company_id', 'id');
    }
    
    public function getCompanyNameAttribute() {
        $companyId = $this->company_id;
        return Company::where('id', $companyId)->value('name');
    }
}

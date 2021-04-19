<?php

namespace App\Models;

use App\Models\Company;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model {
	protected $fillable = [
		'name',
		'email',
		'mobile',
	];

	public function company() {
		return $this->belongsToMany(Company::class, 'company_employee');
	}
}

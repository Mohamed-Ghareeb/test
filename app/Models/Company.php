<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Company extends Model implements HasMedia {
	use InteractsWithMedia;
	protected $fillable = [
		'name',
		'email',
		'mobile',
	];

	public function employee() {
		return $this->belongsToMany(Company::class, 'company_employee');
	}
}

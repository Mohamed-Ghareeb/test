<?php

namespace App\Http\Requests\Company;

use Illuminate\Foundation\Http\FormRequest;

class StoreCompanyRequest extends FormRequest {
	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize() {
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules() {
		return [
			'name' => 'required|string|max:255',
			'email' => 'required|unique:companies,email|email|max:255',
			'mobile' => 'required|unique:companies,mobile|numeric|min:0|digits:11',
			'icon' => 'required|image',
		];
	}
}

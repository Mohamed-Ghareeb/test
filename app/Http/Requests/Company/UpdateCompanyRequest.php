<?php

namespace App\Http\Requests\Company;

use App\Http\Requests\Company\StoreCompanyRequest;

class UpdateCompanyRequest extends StoreCompanyRequest {
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
		$rules = [
			'email' => ['required', 'unique:companies,email,' . $this->route('company')->id],
			'mobile' => ['required', 'numeric', 'min:0', 'digits:11', 'unique:companies,mobile,' . $this->route('company')->id],
		];

		return array_merge(parent::rules(), $rules);
	}
}

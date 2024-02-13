<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductValidate extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        
        if(request()->routeIs('products.update')){
            $sku = 'required|unique:products,sku,'.$this->segment(3); 
        }else{
            $sku  = 'required|unique:products';

        }
        return [
            'sku' => $sku,
            'category' => 'required',
            'moq' => 'required',
            'bom_sku' => 'sometimes',
            'bom_quantity' => 'sometimes',
            'process_id' => 'required',
            'image' => 'sometimes |image|mimes:jpeg,png'

        ];
    }
    public function messages()
    {
        return [
            'process_id.required' => 'Processs is required',
        ];
    }
}

<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Order extends FormRequest
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

        return [
            'product_id'=>'required',
            'quantity'=>'required',
            'buyer_name'=>'required',
            'order_no'=>'required|unique:orders',
            'sale_price'=>'required',
            'quantity'=>'required',
            'date'=>'required'


        ];
    }
}

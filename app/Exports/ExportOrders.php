<?php

namespace App\Exports;

use App\Models\Order;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportOrders implements FromCollection, WithHeadings
{
    public  function headings() : array
    {
        return [

            'S.no',
            'Product SKU',
            'Order Number ',
            'Quantity',
            'Buyer Name',
            'Sale Price',
            'Order Date'
        ];
    }

    public function collection()
    {
        return collect(Order::getExport());
    }


}

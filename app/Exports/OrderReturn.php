<?php

namespace App\Exports;

use App\Models\OrderReturn as ORDEReturn ;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OrderReturn implements FromCollection,WithHeadings,WithColumnWidths
{
    public function columnWidths(): array
    {
        return [
            'A' => 20,
            'B' => 30,
            'C' => 30,
            'D' => 30,
            'E' => 30,
        ];
    }
    public  function headings() : array
    {
        return [

            'Order Number',
            'Buyer Name',
            'Products',
            'Sale Price',
            'Order Return  Price',
            'Return  Quantity',
        ];
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return ORDEReturn::getExport();
    }
}

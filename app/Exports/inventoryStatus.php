<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Models\Order;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class inventoryStatus implements FromCollection,WithHeadings,WithColumnWidths
{
    public function columnWidths(): array
    {
        return [
            'A' => 20,
            'B' => 20,
            'C' => 20,
        ];
    }
    public  function headings() : array
    {
        return [

            'S.no',
            'Product SKU',
            'Quantity',
        ];
    }

    public function collection()
    {
        return collect(Order::getInventoryStatusExport());
    }
}

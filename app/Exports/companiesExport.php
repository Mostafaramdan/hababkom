<?php 
namespace App\Exports;

use App\Models\companies;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class companiesExport implements FromView
{
    function __construct($records)
    {
        $this->records= $records;
    }
    public $records;
    public function view(): View
    {
        return view('companies', [
            'companies' => $this->records
        ]);
    }
}
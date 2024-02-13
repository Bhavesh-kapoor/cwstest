<?php

namespace App\Http\Controllers\admin;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Services\RegistrationService;


class RegistrationController extends Controller
{
    protected $registrationService;

    public function __construct(RegistrationService $registrationService)
    {
        $this->registrationService = $registrationService;
    }

    public function index(Request $request)
    {
        return $this->registrationService->index($request);
    }
    
    public function create()
    {
        return $this->registrationService->create();
    }

    public function store(Request $request)
    {
        return $this->registrationService->store($request);
    }
    public function changepassworddiv($id ,$table)
    {
        return $this->registrationService->changepassworddiv($id,$table);
    }

    public function delete(Request $request)
    {
        return $this->registrationService->delete($request);
    }
    
    
}

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
    
    // Display a listing of the registrations.
    public function index(Request $request)
    {
        return $this->registrationService->index($request);
    }
    
    // Show the form for creating a new registration.
    public function create()
    {
        return $this->registrationService->create();
    }
    
    // Store a newly created registration in storage.
    public function store(Request $request)
    {
        return $this->registrationService->store($request);
    }
    
    // Show the form for editing the specified registration.
    public function edit($id)
    {
        return $this->registrationService->edit($id);
    }
    
    // Update the specified registration in storage.
    public function update(Request $request)
    {
        return $this->registrationService->update($request);
    }
    
    // Remove the specified registration from storage.
    public function delete(Request $request)
    {
        return $this->registrationService->delete($request);
    }

    // View the registration form
    public function view(Request $request)
    {
        return $this->registrationService->view($request->id);
    }
    
   
}

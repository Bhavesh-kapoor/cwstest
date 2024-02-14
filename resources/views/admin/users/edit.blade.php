@extends('admin.layout')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Update  Registration</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);"> Registrations </a></li>
                    <li class="breadcrumb-item active">Update </li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->

<div class="col-lg-12">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title mb-0">Update Registration</h4>
        </div><!-- end card header -->

        <div class="card-body">
            <form id="addstaff" action="{{ route('registrations.update' , $edit->id) }}" enctype="multipart/form-data" method="post">
                @csrf
                @method('PATCH')
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label>First Name</label>
                        <input type="text" class="form-control" name="first_name" value="{{$edit->first_name ?? ''}}" placeholder="Enter  First Name">
                        <div class="error text-danger" id="first_name_error"></div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Last Name</label>
                        <input type="text" class="form-control" name="last_name" value="{{$edit->last_name ?? ''}}" placeholder="Enter Last Name">
                        <div class="error text-danger" id="last_name_error"></div>

                        <input type="hidden" name="user_id"   value="{{ $edit->id }}">
                        
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Phone Number</label>
                        <input oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" name="phone" placeholder="Enter Phone number" value="{{$edit->phone ?? ''}}">
                        <div class="error text-danger" id="phone_error"></div>

                    </div>

                    <div class="col-md-4 mb-3">
                        <label>E-mail Address</label>
                        <input type="email" value="{{$edit->email ?? ''}}" class="form-control" name="email" placeholder="Enter E-mail Address">
                        <div class="error text-danger" id="email_error"></div>

                    </div>
                    
                    <div class="col-md-4 mb-3">
                        <label> DOB ( accept only 18+ user’s dob)</label>
                        <input type="date" class="form-control" value="{{$edit->dob ?? ''}}" name="dob" placeholder="Enter  Address">
                        <div class="error text-danger" id="dob_error"></div>

                    </div>
                    <div class="col-md-3 mb-3">
                        <label> Gender</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" {{($edit->gender == 'male') ? 'checked': ''}} value="male" name="gender" id="male">
                            <label class="form-check-label" for="male">
                                Male
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" {{($edit->gender == 'female') ? 'checked': ''}} type="radio" value="female" name="gender" id="female" >
                            <label class="form-check-label" for="female">
                                Female
                            </label>
                        </div>

                    </div>


                    <div class="col-md-3 mb-3">
                        <label>Profile Picture</label>
                        <input type="file" class="form-control" name="profile"  accept="image/png, image/jpg, image/jpeg">
                        @if(!empty($edit->profile))
                        <a href="{{asset('uploads/users/documents/profile/'.$edit->profile)}}" target="__blank">
                            <img src="{{asset('uploads/users/documents/profile/'.$edit->profile)}}" width="100px" height="100px">
                        </a>
                        @endif()
                        <div class="error text-danger" id="profile_error"></div>

                    </div>
                    <div class="col-md-3 mb-3">
                        <label>Upload Resume</label>
                        <input type="file" class="form-control" name="resume" accept="application/pdf,application/docs" >
                        <div class="error text-danger" id="resume_error"></div>
                        @if(!empty($edit->resume))
                        <a href="{{asset('uploads/users/documents/resume/'.$edit->resume)}}" target="__blank">
                            View
                        </a>
                         
                        @endif()
                    </div>
                    <div class="col-md-12 mb-3">
                        <label> Address</label>
                        <textarea type="email" class="form-control" name="address" placeholder="Enter  Address"> {{ $edit->address ?? '' }}</textarea>
                        <div class="error text-danger" id="address_error"></div>

                    </div>

                   

                    <div class="row mt-3">
                        <div class="col-lg-12">
                            <div class="hstackloader"></div>
                            <div class="hstack gap-2 justify-content-end">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                        </div>
                    </div>
                   

            </form>
        </div>
    </div>


</div>
</div>

@push('registrationajax')
<script type="text/javascript" src="{{ URL::asset('admin/js/registrationajax.js') }}"></script>
@endpush


@endsection()
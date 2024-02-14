@extends('admin.layout')

@section('content')
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Registration Details</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Registration</a></li>
                        <li class="breadcrumb-item active">Registration Details</li>
                    </ol>
                </div>

            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title mb-0">{{ $edit->first_name }} {{ $edit->last_name }}</h4>
                </div><!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col-5 text-center">
                            @if(!empty($edit->profile))
                            <a href="{{asset('uploads/users/documents/profile/'.$edit->profile)}}" target="__blank">
                                <img src="{{asset('uploads/users/documents/profile/'.$edit->profile)}}" width="400px" height="400px">
                            </a>
                            @endif()
                        </div>
                        <div class="col-7">
                            <table class="table table-bordered mt-3" style="border: 1px solid #80808038;">
                                <tbody>
                                    <tr>
                                        <th>Full Name</th>
                                        <td>{{ $edit->first_name }} {{ $edit->last_name }}</td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th>
                                        <td>{{ $edit->phone ??  '' }} </td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td>{{ $edit->email ??  ''  }}</td>
                                    </tr>
                                    <tr>
                                        <th>Date of Birth</th>
                                        <td>{{ $edit->dob ??  ''  }}</td>
                                    </tr>
                                    <tr>
                                        <th>Gender</th>
                                        <td>{{ $edit->gender ??  ''  }}</td>
                                    </tr>
                                    <tr>
                                        <th>Resume </th>
                                        <td>@if(!empty($edit->resume))
                                            <a href="{{asset('uploads/users/documents/resume/'.$edit->resume)}}" target="__blank">
                                                View
                                            </a>
                                             
                                            @endif()</td>
                                    </tr>
                                    
                                    <tr>
                                        <th>Address</th>
                                        <td>{{ $edit->address ??  ''  }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!-- end card -->
            </div>
            <!-- end col -->
        </div>
        <!-- end col -->
    </div>
    </div>
    @push('registrationajax')
        <script type="text/javascript" src="{{ URL::asset('admin/js/registrationajax.js') }}"></script>
    @endpush
@endsection()

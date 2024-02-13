@extends('admin.layout')

@section('content')



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">All Registrations</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">All Registrations</a></li>
                    <li class="breadcrumb-item active">All Registrations</li>
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
                <div class="row g-2">
                    <div class="col-sm-4">
                        <h5 class="card-title mb-0">Registrations List</h5>
                    </div>

                    <div class="col-sm-auto ms-auto">

                        <div class="list-grid-nav gap-1">
                            <a href="{{ url('admin/registrations/create')}}" class="btn btn-success btn-sm"><i class="ri-add-fill me-1 align-bottom"></i> Add New Registration</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table id="example" class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                    <thead>
                        <tr>
                            <th data-ordering="false">S.NO</th>
                            <th data-ordering="false">Name</th>
                            <th data-ordering="false">Mobile Number</th>
                            <th data-ordering="false">Email </th>
                            <th data-ordering="false">Profile </th>
                            <th data-ordering="false">Resume </th>
                            <th data-ordering="false">Gender </th>
                            <th data-ordering="false">Dob </th>
                            <th data-ordering="false">Addres </th>

                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $list)
                        <tr>
                            <td>{{$loop->index+1}}</td>
                            <td>{{$list->first_name}} &nbsp;  {{$list->last_name}}</td>
                            <td>{{$list->phone}}</td>
                            <td>{{$list->email}}</td>
                            <td>
                                @if(!empty($list->profile))
                                <a href="{{asset('uploads/users/documents/profile/'.$list->profile)}}" target="__blank">
                                    <img src="{{asset('uploads/users/documents/profile/'.$list->profile)}}" width="100px" height="100px">
                                </a>
                                @endif()
                            
                            </td>
                            <td>
                            @if(!empty($list->resume))
                                <a href="{{asset('uploads/users/documents/resume/'.$list->resume)}}" target="__blank">
                                    View
                                </a>
                                 
                                @endif()
                            </td>
                            <td>{{$list->gender}}</td>
                            <td>{{$list->dob}}</td>
                            <td>{{$list->address}}</td>
                            <td>
                              


                                <div class="dropdown d-inline-block">

                                    <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="ri-more-fill align-middle"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end">

                                        <li>
                                            <a class="dropdown-item" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup({{ $list->id }},'users','delete')" href="javascript:void(0);">
                                                <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        @endforeach()

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--end col-->
</div>
<!--end row-->

@include('admin.deactivate')

@endsection()
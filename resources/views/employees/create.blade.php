@extends('layouts.app')


@section('content')
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-6  subheader-transparent " id="kt_subheader">
        <div class="container-fluid  d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Mobile Toggle-->
                <button class="burger-icon burger-icon-left mr-4 d-inline-block d-lg-none"
                        id="kt_subheader_mobile_toggle">
                    <span></span>
                </button>
                <!--end::Mobile Toggle-->

                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline flex-wrap mr-5">
                    <!--begin::Page Title-->
                    <h5 class=" text-dark font-weight-bold my-1 mr-5"> Add Employee</h5>
                    <!--end::Page Title-->

                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                        <li class="breadcrumb-item">
                            <a href="{{ url('/') }}" class="text-muted">
                                Home </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('employees.index') }}" class="text-muted">employees</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#" class="text-muted">Add employees</a>
                        </li>
                    </ul>
                    <!--end::Breadcrumb-->
                </div>
                <!--end::Page Heading-->
            </div>
            <!--end::Info-->
        </div>
    </div>

    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container-fluid">
            <!--begin::Todo-->
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-custom">
                        <div class="card-header">
                            <h3 class="card-title">
                                Add Employee
                            </h3>
                        </div>
                        <div class="card-body">
                            <form class="form" action="{{ route('employees.store') }}" method="POST"
                                  enctype="multipart/form-data">
                                @csrf
                                <div class="row container-fluid mb-5">
                                    <div class="col-xl-0"></div>
                                    <div class="col-xl-10">
                                        @include("employees.partials._fields", [
                                            'action' => 'create',
                                        ])
                                    </div>
                                    <div class="col-md-4"></div>
                                    <div class="col-md-1"></div>
                                    <div class="col-lg-2">
                                        <button type="submit"
                                                class="btn btn-block btn-sm btn-primary font-weight-bolder text-uppercase py-2">Add Employee
                                            </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection

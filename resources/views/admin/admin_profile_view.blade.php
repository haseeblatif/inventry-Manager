@extends('admin.admin_master')
@section('admin')

<div class="page-content">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-4">
                <div class="card"><br><br>
                    <center>
                    <img class="rounded-circle avatar-xl" alt="200x200" src="{{(!empty('$adminData->profile_image'))? url('upload/admin_Image/'.$adminData->profile_image):url('upload/no_image.jpg') }}" data-holder-rendered="true">
                </center>
                    <div class="card-body">
                        <h4 class="card-title">Name :  {{ $adminData->name }}</h4>
                        <hr>
                        <h4 class="card-title">Email :  {{ $adminData->email }}</h4>
                        <hr>
                        <h4 class="card-title">User Name :  {{ $adminData->username }}</h4>
                        <hr>
                        <a href="{{ route('edit.profile') }}" class="btn btn-info btn-rounded waves-effect waves-ligh">Edit Profile</a>
                    </div>
                </div>
            </div>

         
        </div>


    </div>
</div>

@endsection
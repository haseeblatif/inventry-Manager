@extends('admin.admin_master')
@section('admin')

<div class="page-content">
    <div class="container-fluid">

        <div class="card-body">

            <h4 class="card-title">Edit Profile Page</h4>
            <form>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input name="name" class="form-control" type="text"  value="{{ $adminData->name }}"  id="example-text-input">
                </div>
            </div>
            <!-- end row -->
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input name="email" class="form-control" type="email"  value="{{ $adminData->email }}"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input name="usermane" class="form-control" type="text"  value="{{ $adminData->username }}"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Profile Image</label>
                <div class="col-sm-10">
                    <input name="profile_image" class="form-control" type="file"  value="{{ $adminData->username }}"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10">
                   
                        <img class="rounded-circle avatar-xl" alt="200x200" src="{{ asset('backend/assets/images/users/avatar-4.jpg') }}" data-holder-rendered="true">
                </div>
            </div>
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Update Profile">
        </form>
         
        
            <!-- end row -->
        </div>


    </div>
</div>

@endsection
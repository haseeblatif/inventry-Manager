@extends('admin.admin_master')
@section('admin')
<div class="page-content">
    <div class="container-fluid">

        <div class="card-body">

            <h4 class="card-title">Change Admin Password</h4><br><br>

             @if(count($errors)) 
             
             @foreach ($errors->all() as $error )
             <p class="alert alert-danger alert-dismissible fade show">{{ $error }}</p>
                 
             @endforeach
                 
             @endif

            <form method="POST" action = "{{ route('update.password') }}" enctype="multipart/form-data">
                @csrf
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Old Password</label>
                <div class="col-sm-10">
                    <input name="oldpassword" class="form-control" type="password" id="oldpassword">
                </div>
            </div>
            <!-- end row -->
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">New Password</label>
                <div class="col-sm-10">
                    <input name="newpassword" class="form-control" type="password" id="newpassword">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Confirm Password</label>
                <div class="col-sm-10">
                    <input name="confirm_password" class="form-control" type="password" id="confirm_password">
                </div>
            </div>
           
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Change Password">
        </form>
         
        
            <!-- end row -->
        </div>

    </div>
</div>
    </div>
  </div>
</div>




@endsection
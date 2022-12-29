@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

        <div class="card-body">

            <h4 class="card-title">Add Portfolio Page</h4>
            <form method="POST" action="{{ route('update.blog.category') }}" enctype="multipart/form-data">
                @csrf

                <input type="hidden" name="id" value="{{ $blogCategory->id }}">
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Blog Category</label>
                <div class="col-sm-10">
                    <input name="blog_category" class="form-control" value="{{ $blogCategory->blog_category }}" type="text" id="example-text-input">
                </div>
            </div>
            <!-- end row -->
          
         
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Update Portfolio">
        </form>
         
        
            <!-- end row -->
        </div>

    </div>
</div>
    </div>
  </div>
</div>

@endsection 
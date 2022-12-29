@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style type="text/css">
    .bootstrap-tagsinput .tag{
        margin-right: 2px;
        color: black;
        font-weight: 700px;
    } 
</style>
    <div class="page-content">
        <div class="container-fluid">

            <div class="card-body">

                <h4 class="card-title">Add Blog Page</h4>
                <form method="POST" action="{{ route('store.blog') }}" enctype="multipart/form-data">
                    @csrf

                    {{-- <input type="hidden" name="id" value="{{ $aboutPage->id }}"> --}}
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">Blog Category Name</label>
                        <div class="col-sm-10">
                            <select name="blog_category_id" id="example-text-input" class="form-select" aria-label="Default select example">
                                <option selected="">Open this select menu</option>
                                @foreach ($categories as $cat)
                                <option value="{{ $cat->id }}">{{ $cat->blog_category }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <!-- end row -->
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">Blog Title</label>
                        <div class="col-sm-10">
                            <input name="blog_title" class="form-control" id="example-text-input">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">Blog Tags</label>
                        <div class="col-sm-10">
                            <input name="blog_tags" class="form-control" id="example-text-input" data-role="tagsinput">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">BLog Description</label>
                        <div class="col-sm-10">
                            <textarea id="elm1" name="blog_description"></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">Blog Image</label>
                        <div class="col-sm-10">
                            <input name="blog_image" class="form-control" type="file" id="image">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-10">

                            <img id="showImage" class="rounded avatar-lg" alt="Image"
                                src="{{ url('upload/no_image.jpg') }}" data-holder-rendered="true">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-info waves-effect waves-light" value="Insert Blog Data">
                </form>


                <!-- end row -->
            </div>

        </div>
    </div>
    </div>
    </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#image').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#showImage').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script>
@endsection

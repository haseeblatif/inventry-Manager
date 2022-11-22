@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

        <div class="card-body">

            <h4 class="card-title">Home Slide Page</h4>
            <form method="POST" action = "{{ route('update.slider') }}" enctype="multipart/form-data">
                @csrf

                <input type="hidden" name="id" value="{{ $homeslide->id }}">
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Title</label>
                <div class="col-sm-10">
                    <input name="title" class="form-control" type="text"  value="{{ $homeslide->title }}"  id="example-text-input">
                </div>
            </div>
            <!-- end row -->
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Short Title</label>
                <div class="col-sm-10">
                    <input name="short_title" class="form-control"  value="{{ $homeslide->short_title }}"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Video URL</label>
                <div class="col-sm-10">
                    <input name="video_url" class="form-control" type="text"  value="{{ $homeslide->video_url }}"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Profile Image</label>
                <div class="col-sm-10">
                    <input name="home_slide" class="form-control" type="file"  value="{{ $homeslide->video_url }}"  id="image">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10">
                   
                        <img id="showImage" class="rounded-circle avatar-xl" alt="200x200" src="{{(!empty('$homeslide->home_slide'))? url('upload/home_slide/'.$homeslide->home_slide):url('upload/no_image.jpg') }}" data-holder-rendered="true">
                </div>
            </div>
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Update Slide">
        </form>
         
        
            <!-- end row -->
        </div>

    </div>
</div>
    </div>
  </div>
</div>
@endsection
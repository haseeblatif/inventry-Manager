@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">

        <div class="card-body">

            <h4 class="card-title">Add Portfolio Page</h4>
            <form method="POST" action = "{{ route('store.portfolio') }}" enctype="multipart/form-data">
                @csrf

                {{-- <input type="hidden" name="id" value="{{ $aboutPage->id }}"> --}}
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Protfolio Name</label>
                <div class="col-sm-10">
                    <input name="portfolio_name" class="form-control" type="text" id="example-text-input">
                </div>
            </div>
            <!-- end row -->
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Portfolio Title</label>
                <div class="col-sm-10">
                    <input name="portfolio_title" class="form-control"  id="example-text-input">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Short Description</label>
                <div class="col-sm-10">
                   <textarea name="portfolio_description" class="form-control" cols="30" rows="10"></textarea>
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Portfolio Image</label>
                <div class="col-sm-10">
                    <input name="portfolio_image" class="form-control" type="file"  id="image">
                </div>
            </div>
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10">
                   
                        <img id="showImage" class="rounded avatar-lg" alt="Image" src="{{url('upload/no_image.jpg') }}" data-holder-rendered="true">
                </div>
            </div>
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Update About">
        </form>
         
        
            <!-- end row -->
        </div>

    </div>
</div>
    </div>
  </div>
</div>
<script type="text/javascript">
   
    $(document).ready(function(){
     $('#image').change(function(e){
         var reader = new FileReader();
         reader.onload = function(e){
             $('#showImage').attr('src',e.target.result);
         }
         reader.readAsDataURL(e.target.files['0']);
     });
    });
 
 </script>
@endsection 
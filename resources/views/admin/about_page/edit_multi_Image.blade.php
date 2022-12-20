@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <div class="page-content">
        <div class="container-fluid">

            <div class="card-body">

                <h4 class="card-title"> Update Multi Images</h4><br><br>
                <form method="POST" action="{{ route('update.multi.image') }}" enctype="multipart/form-data">
                    @csrf
                    <input name="id" class="form-control" type="hidden" value="{{ $multiImage->id }}">
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label">About  MultiImage</label> <br>
                        <div class="col-sm-10">
                        <input name="multi_images" class="form-control" type="file" id="image">
                    </div>
                    </div>
                    <div class="row mb-3">
                        <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-10">

                            <img id="showImage" class="rounded avatar-lg" alt="Image"
                                src="{{ asset($multiImage->multi_images) }}" data-holder-rendered="true">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-info waves-effect waves-light" value="Update About MultiImages">
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

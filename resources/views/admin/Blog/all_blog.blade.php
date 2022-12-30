@extends('admin.admin_master')
@section('admin')
    <div class="page-content">
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">All Blogs</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All About Blogs</h4>
                            <table id="datatable" class="table table-bordered dt-responsive nowrap"
                                style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th>Sr No</th>
                                        <th>Blog Category</th>
                                        <th>Blog Title</th>
                                        <th>Blog Tags</th>
                                        <th>Blog Images</th>
                                       
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @php($i = 0)
                                    @foreach ($allBlog as $blog)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{ $blog['category']['blog_category'] }}</td>
                                            <td>{{ $blog->blog_title }}</td>
                                            <td>{{ $blog->blog_tags }}</td>
                                        
                                          
                                            <td>
                                                <img src="{{ asset($blog->blog_image) }}"
                                                    style="width:60px; height: 50px;" alt="">
                                            </td>
                                            <td>
                                                <a href="{{ route('edit.blog', $blog->id) }}" class="btn btn-info sm"
                                                    title="Edit Data"> <i class="fas fa-edit"></i></a>
                                                <a href="{{ route('delete.blog', $blog->id) }}"
                                                    class="btn btn-danger sm" title="Delete Data" id="delete"> <i
                                                        class="fas fa-trash-alt"></i></a>
                                            </td>

                                        </tr>

                                </tbody>
                                @endforeach
                            </table>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->
        </div>

    </div>
@endsection

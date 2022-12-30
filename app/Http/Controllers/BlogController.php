<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Carbon\Carbon;

class BlogController extends Controller
{
    public function allBlog(Request $request)
    {
        // dd($request->all()); 
        $allBlog = Blog::latest()->get();

        return view('admin.Blog.all_blog', compact('allBlog'));
    }
    public function addBlog()
    {
        $categories = BlogCategory::orderBy('blog_category', 'asc')->get();
        return view('admin.Blog.add_blog', compact('categories'));
        // dd($categories);

    }
    public function storeBlog(Request $request)
    {
        $image = $request->file('blog_image');
        $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

        Image::make($image)->resize(430, 327)->save('upload/blog/' . $name_gen);

        $save_url = 'upload/blog/' . $name_gen;

        Blog::insert([
            'blog_category_id' => $request->blog_category_id,
            'blog_title' => $request->blog_title,
            'blog_tags' => $request->blog_tags,
            'blog_description' => $request->blog_description,
            'blog_image' => $save_url,
            'created_at' => Carbon::now(),
        ]);
        $notification = array(
            'message' => 'Blog Inserted SucessFully Successfully',
            'alert-type' => 'info'

        );
        return redirect()->route('all.blog')->with($notification);
    }
    public function editBlog($id)
    {
        // dd($request->id);

        $categories = BlogCategory::orderBy('blog_category', 'asc')->get();
        $blogs = Blog::findOrFail($id);

        return view('admin.Blog.edit_blog', compact('blogs', 'categories'));
    }
    public function updateBlog(Request $request)
    {
        $blogs_id = $request->id;
        if ($request->file('blog_image')) {
            $image = $request->file('blog_image');
            $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

            Image::make($image)->resize(1024, 519)->save('upload/blog/' . $name_gen);

            $save_url = 'upload/blog/' . $name_gen;

            Blog::findOrFail($blogs_id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_tags' => $request->blog_tags,
                'blog_description' => $request->blog_description,
                'blog_image' => $save_url,
                // 'created_at' => Carbon::now(),

            ]);
            $notification = array(
                'message' => 'Portfolio Updated with Image Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.blog')->with($notification);
        } else {
            Blog::findOrFail($blogs_id)->update([
                'blog_category_id' => $request->blog_category_id,
                'blog_title' => $request->blog_title,
                'blog_tags' => $request->blog_tags,
                'blog_description' => $request->blog_description,

            ]);
            $notification = array(
                'message' => 'Portfolio Updated without Image Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.blog')->with($notification);
        }
    }
    public function deleteBlog($id)
    {
        $blog_img = Blog::findOrFail($id);
        $img = $blog_img->blog_image;
        unlink($img);

        Blog::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Blog Deleted Successfully',
            'alert-type' => 'info'

        );
        return redirect()->back()->with($notification);
    }
}

<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\BlogCategory;
use Illuminate\Http\Request;

class BlogCategoryController extends Controller
{
    public function allCategory()
    {
        $allBlogCategory = BlogCategory::latest()->get();
        return view('admin.BlogCategory.all_blog_category', compact('allBlogCategory'));
    }
    public function addCategory()
    {
        return view('admin.BlogCategory.add_blog_category');
    }
    public function storeBlogCategory(Request $request)
    {
        $data =  $request->validate([
            'blog_category' => 'required',
        ]);

        BlogCategory::insert([
            'blog_category' => $request->blog_category,
        ]);
        $notification = array(
            'message' => 'Blog Category Inserted SucessFully Successfully',
            'alert-type' => 'info'

        );
        return redirect()->route('all.category.blog')->with($notification);
    }
    public function editBlogCategory($id)
    {
        $blogCategory = BlogCategory::find($id);
        return view('admin.BlogCategory.edit_blog_category', compact('blogCategory'));
    }
    public function updateBlogCategory(Request $request)
    {
        $blog_categories_id = $request->id;
        BlogCategory::findOrFail($blog_categories_id)->update([
            'blog_category' => $request->blog_category,

        ]);
        $notification = array(
            'message' => 'Blog Category Updated Successfully',
            'alert-type' => 'info'

        );
        return redirect()->route('all.category.blog')->with($notification);
    }
    public function deleteBlogCategory($id)
    {
        $blogCategory = BlogCategory::findOrFail($id);
        BlogCategory::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Blog Category Deleted Successfully',
            'alert-type' => 'info'

        );
        return redirect()->back()->with($notification);
    }
}

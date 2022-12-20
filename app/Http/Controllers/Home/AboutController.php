<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\About;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use App\Models\MultiImage;
use Carbon\Carbon;

class AboutController extends Controller
{
    public function AboutPage()
    {
        $aboutPage = About::find(1);
        return view('admin.about_page.about_page_all', compact('aboutPage'));
    }


    public function UpdateAbout(Request $request)
    {
        $about_id = $request->id;
        if ($request->file('about_image')) {
            $image = $request->file('about_image');
            // dd($image);
            $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

            Image::make($image)->resize(523, 605)->save('upload/home_about/' . $name_gen);

            $save_url = 'upload/home_about/' . $name_gen;

            About::findOrFail($about_id)->update([
                'title' => $request->title,
                'short_title' => $request->short_title,
                'short_description'  => $request->short_description,
                'long_description'  => $request->long_description,
                'about_image' => $save_url,
            ]);
            $notification = array(
                'message' => 'About Page Updated Successfully',
                'alert-type' => 'info'

            );
            return redirect()->back()->with($notification);
        } else {
            About::findOrFail($about_id)->update([
                'title' => $request->title,
                'short_title' => $request->short_title,
                'short_description'  => $request->short_description,
                'long_description'  => $request->long_description,


            ]);
            $notification = array(
                'message' => 'About Page Updated without Image Successfully',
                'alert-type' => 'info'

            );
            return redirect()->back()->with($notification);
        }
    }


    public function HomeAbout()
    {
        $aboutPage = About::find(1);
        return view('frontend.about_page', compact('aboutPage'));
    }


    public function AboutMultiImages()
    {

        return view('admin.about_page.multiImage');
    }



    public function StoreMultiImages(Request $request)
    {
        $image = $request->file('multi_images');

        foreach ($image as $multi_Image) {
            $name_gen = hexdec(uniqid()) . "." . $multi_Image->getClientOriginalExtension();
            Image::make($multi_Image)->resize(200, 200)->save('upload/about_MultiImages/' . $name_gen);

            $save_url = 'upload/about_MultiImages/' . $name_gen;
            MultiImage::insert([
                'multi_images' => $save_url,
                'created_at' => Carbon::now()
            ]);
        }
        $notification = array(
            'message' => ' Multi Images About Updated Successfully',
            'alert-type' => 'info'

        );
        return redirect()->route('all.multi.images')->with($notification);
    }
    public function AllMultiImages()
    {
        $multiIMages = MultiImage::all();
        return  view('admin.about_page.all_multiImage', compact('multiIMages'));
    }
    public function EditMultiImages($id)
    {
        $multiImage  = MultiImage::findorFail($id);
        return view('admin.about_page.edit_multi_Image' ,compact('multiImage'));
    }
    public function UpdateMultiImages(Request $request)
    {
        $multi_images_id = $request->id;
        if ($request->file('multi_images')) {
            $image = $request->file('multi_images');
            // dd($image);
            $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

            Image::make($image)->resize(220, 220)->save('upload/about_MultiImages/' . $name_gen);

            $save_url = 'upload/about_MultiImages/' . $name_gen;

            MultiImage::findOrFail($multi_images_id)->update([
                'multi_images' => $save_url
            ]);
            $notification = array(
                'message' => 'About MultiImage Updated Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.multi.images')->with($notification);
        } 
    }
    public function DeleteMultiImages($id)
    {
        $multi = MultiImage::findOrFail($id);
        $img = $multi->multi_images;
        unlink($img);

        MultiImage::findOrFail($id)->delete();
        $notification = array(
            'message' => 'About MultiImage Deleted Successfully',
            'alert-type' => 'info'

        );
        return redirect()->back()->with($notification);
    }
}

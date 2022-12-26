<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\Portfolio;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Psy\Readline\Hoa\Console;

class PortfolioController extends Controller
{
    public function allPortfolio()
    {
        $portfolio = Portfolio::latest()->get();

        return view('admin.portfolio.portfolio_all', compact('portfolio'));
    }

    public function addPortfolio()
    {
        return view('admin.portfolio.portfolio_add');
    }

    public function StorePortfolio(Request $request)
    {
        // dd($request->all());
        $data =  $request->validate([
            'portfolio_name' => 'required',
            'portfolio_title' => 'required',
            'portfolio_image' => 'required',


        ], [
            'portfolio_name.required' => 'Portfolio Name is required',
            'portfolio_title.required' => 'Portfolio Title is required',
        ]);

        if ($request->file('portfolio_image')) {
            $image = $request->file('portfolio_image');
            $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

            Image::make($image)->resize(1024, 519)->save('upload/portfolio/' . $name_gen);

            $save_url = 'upload/portfolio/' . $name_gen;

            Portfolio::insert([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,
                'portfolio_image' => $save_url,
                'created_at' => Carbon::now(),
            ]);
            $notification = array(
                'message' => 'Portfoilio Inserted SucessFully Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.portfolio')->with($notification);
        }
    }
    public function editPortfolio($id)
    {
        $portfolio = Portfolio::findOrFail($id);

        return view('admin.portfolio.portfolio_edit', compact('portfolio'));
    }
    public function updatePortfolio(Request $request)
    {
        // dd($request->all());
        $portfolio_id = $request->id;
        if ($request->file('portfolio_image')) {
            $image = $request->file('portfolio_image');
            $name_gen = hexdec(uniqid()) . "." . $image->getClientOriginalExtension();

            Image::make($image)->resize(1024, 519)->save('upload/portfolio/' . $name_gen);

            $save_url = 'upload/portfolio/' . $name_gen;

            Portfolio::findOrFail($portfolio_id)->update([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,
                'portfolio_image' => $save_url,

            ]);
            $notification = array(
                'message' => 'Portfolio Updated with Image Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.portfolio')->with($notification);
        } else {
            Portfolio::findOrFail($portfolio_id)->update([
                'portfolio_name' => $request->portfolio_name,
                'portfolio_title' => $request->portfolio_title,
                'portfolio_description' => $request->portfolio_description,


            ]);
            $notification = array(
                'message' => 'Portfolio Updated without Image Successfully',
                'alert-type' => 'info'

            );
            return redirect()->route('all.portfolio')->with($notification);
        }
    }
    public function deletePortfolio($id)
    {
        $portfolio_img = Portfolio::findOrFail($id);
        $img = $portfolio_img->portfolio_image;
        unlink($img);

        Portfolio::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Portfolio Deleted Successfully',
            'alert-type' => 'info'

        );
        return redirect()->back()->with($notification);
    } 

    public function portfolioDetails($id)
    {
        $portfolio = Portfolio::findOrFail($id);

        return view('frontend.portfolio_details', compact('portfolio'));
    }
}

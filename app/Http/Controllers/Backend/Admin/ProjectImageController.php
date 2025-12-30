<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Helpers\Helper;
use App\Http\Controllers\Controller;
use App\Models\ProjectImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class ProjectImageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    public function getAllProjectImages()
    {

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request, $id)
    {
        if ($request->ajax()) {
            $view = View::make('backend.pages.projects.project_images.create', compact('id'))->render();
            return response()->json(['html' => $view]);
        } else {
            return response()->json(['status' => 'false', 'message' => "Access only ajax request"]);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($request->ajax()) {

            $rules = [
                'multiple_images' => 'required',
            ];
            $path = "projects";
            $project_id = $request->input('project_id');

            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return response()->json([
                    'type' => 'error',
                    'errors' => $validator->getMessageBag()->toArray()
                ]);
            } else {
                DB::beginTransaction();
                try {
                    if ($request->hasFile('multiple_images')) {
                        $files = $request->file('multiple_images');
                        foreach ($files as $file) {
                            $imageName = Helper::saveImage($file, 770, 520, $path);
                            ProjectImage::create([
                                'project_id' => $project_id,
                                'image_path' => $imageName
                            ]);
                        }
                    }
                    DB::commit();
                    return response()->json(['type' => 'success', 'message' => "Successfully Inserted"]);
                } catch (\Exception $e) {
                    DB::rollback();
                    dd($e->getMessage());
                    return response()->json(['type' => 'error', 'message' => "Please Fill With Correct data"]);
                }
                // }
            }
        } else {
            return response()->json(['status' => 'false', 'message' => "Access only ajax request"]);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request,$id)
    {
        if ($request->ajax()) {
            $project_image = ProjectImage::where('id', $id)->where('project_id', $request->project_id)->first();
            $project_title = $project_image->project->project_title;
            $view = View::make('backend.pages.projects.project_images.show', compact('project_title','project_image'))->render();
            return response()->json(['html' => $view]);
        } else {
            return response()->json(['status' => 'false', 'message' => "Access only ajax request"]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        if ($request->ajax()) {
            $project_image = ProjectImage::where('id', $id)->where('project_id', $request->project_id)->first();
            if ($project_image) {
                // Delete the image file from public storage if needed
                if (file_exists(public_path($project_image->image_path))) {
                    unlink(public_path($project_image->image_path));
                }
                $project_image->delete();
                return response()->json(['type' => 'success', 'message' => 'Successfully Deleted']);
            }
            return response()->json(['type' => 'success', 'message' => 'Successfully Deleted']);
        } else {
            return response()->json(['status' => 'false', 'message' => "Access only ajax request"]);
        }
    }
}

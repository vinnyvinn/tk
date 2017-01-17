<?php

namespace App\Http\Controllers;

use App\Task;
use Excel;
use Illuminate\Http\Request;
use Response;

class TaskController extends Controller
{
    public function import(Request $request)
    {
        if (! $request->file('import_file')) {
            return Response::json([
                "success" => false,
                'message' => 'Please select a file to import.'
            ]);
        }

        if (! $request->file('import_file')->isValid()) {
            return Response::json([
                "success" => false,
                'message' => 'Please select a valid excel file to import.'
            ]);
        }

        $toImport = $request->file('import_file');
        $rows = Excel::load($toImport)->get()->reject(function ($value) {
            return is_null($value->title);
        })->toArray();

        if (! count($rows)) {
            return Response::json([
                "success" => false,
                'message' => 'The selected file has no rows.'
            ]);
        }
        $data = $request->all();
        unset($data['id']);
        $toInsert = [];

        foreach ($rows as $row) {
            $toInsert [] = array_merge($request->only([
                'project_id', 'points', 'milestone_id', 'assigned_to', 'collaborators', 'status', 'labels'
            ]), [
                'title' => $row['title'],
                'description' => $row['description'],
                'max_hours' => $row['hours'],
                'start_date' => $row['start_date'],
                'deadline' => $row['deadline']
            ]);
        }

        Task::insert($toInsert);

        return Response::json([
            'success' => true,
            'message' => 'Successfully imported tasks.'
        ]);
    }
}

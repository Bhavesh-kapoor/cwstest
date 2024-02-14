<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Validation\Rule;

use Illuminate\Support\Carbon;





class RegistrationService
{

    // Display a listing of the users.
    public static function index()
    {
        $data['users'] = User::getList();
        return view('admin.users.list', $data);
    }


    // Show the form for creating a new user.
    public static function create()
    {
        return view('admin.users.add');
    }


    // Upload a file and return the file name.
    public static function uploadFile($file, $type)
    {
        $fileName = date('YmdHi') . $file->getClientOriginalName();
        $file->move(public_path("uploads/users/documents/$type"), $fileName);
        return $fileName;
    }

    // Store a newly created user in storage.

    public static function store($request)
    {
        $validate = Validator::make($request->all(), Self::validationRules($request));


        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            if ($request->hasFile('profile')) {
                $data['profile'] = Self::uploadFile($request->file('profile'), 'profile');
            }

            if ($request->hasFile('resume')) {
                $data['resume'] = Self::uploadFile($request->file('resume'), 'resume');
            }
            $data['first_name'] = $request->input('first_name');
            $data['last_name'] = $request->input('last_name');
            $data['phone'] = $request->input('phone');
            $data['email'] = $request->input('email');
            $data['dob'] = $request->input('dob');
            $data['gender'] = $request->input('gender');
            $data['address'] = $request->input('address');
            $query =  User::insert($data);

            if ($query) {
                return response()->json(['code' => 200, 'message' => 'User added Successfully!']);
            } else {
                return response()->json(['code' => 401, 'message' => 'Something went wrong']);
            }
        }
    }

    // Show the form for editing the specified user.
    public static function edit($id)
    {
        $data['edit'] = User::getuserdata($id);
        return view('admin.users.edit', $data);
    }



    // Update the specified user in storage.
    public static function update(Request $request)
    {

        $validate = Validator::make($request->all(), Self::validationRules($request, $request->user_id));

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            if ($request->hasFile('profile')) {
                $data['profile'] = Self::uploadFile($request->file('profile'), 'profile');
            }

            if ($request->hasFile('resume')) {
                $data['resume'] = Self::uploadFile($request->file('resume'), 'resume');
            }

            $data['first_name'] = $request->input('first_name');
            $data['last_name'] = $request->input('last_name');
            $data['phone'] = $request->input('phone');
            $data['email'] = $request->input('email');
            $data['dob'] = $request->input('dob');
            $data['gender'] = $request->input('gender');
            $data['address'] = $request->input('address');
            $query =  User::where('id', $request->user_id)->update($data);

            if ($query) {
                return response()->json(['code' => 200, 'message' => 'User Updated Successfully!']);
            } else {
                return response()->json(['code' => 401, 'message' => 'Something went wrong']);
            }
        }

        return $request->all();
    }


// Remove the specified user from storage.
    public static function delete($request)
    {

        $validate = Validator::make($request->all(), [
            'id' => 'required',
            'table' => 'required',
            'type' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 400, 'message' => 'Something went wrong']);
        } else {

            if ($request->type == 'delete') {
                $key = 'Deleted';
            }


            $query = DB::table($request->table)->where('id', $request->id)->delete();


            if ($query) {
                return response()->json(['code' => 200, 'message' => 'Data ' . $key . ' Successfully']);
            } else {
                return response()->json(['code' => 400, 'message' => 'Something went wrong']);
            }
        }
    }


    // Define validation rules for the user data.
    public static function validationRules($request, $userId = null)
    {
        $rules = [
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required|min:10',
            'email' => [
                'required',
                'email',
                Rule::unique('users', 'email')->ignore($userId),
            ],
            'dob' => 'required|date|before:' . Carbon::now()->subYears(18)->format('Y-m-d'),
            'gender' => 'required',
            'address' => 'required',
        ];
        if ($request->isMethod('post')) {
            // Add rules for store operation
            $rules['profile'] = 'required|image|mimes:jpg,jpeg,png|max:2048';
            $rules['resume'] = 'required|mimes:pdf,docx|max:2048';
        } else {
            // Add rules for update operation
            $rules['profile'] = 'sometimes|image|mimes:jpg,jpeg,png|max:2048';
            $rules['resume'] = 'sometimes|mimes:pdf,docx|max:2048';
        }

        return $rules;
    }


    public function view($id){
        $data['edit'] = User::getuserdata($id);
        return view('admin.users.view', $data);

    }
}

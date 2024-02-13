<?php 

namespace App\Services;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\User;

use Illuminate\Support\Carbon;





class RegistrationService
{

    
    public static function index()
    {
        $data['users'] = User::getList();
        return view('admin.users.list', $data);
    }


    public static function create()
    {
        return view('admin.users.add');
    }

    public static function uploadFile($file, $type)
    {
        $fileName = date('YmdHi') . $file->getClientOriginalName();
        $file->move(public_path("uploads/users/documents/$type"), $fileName);
        return $fileName;
    }

    public static function store( $request)
    { 
        $validate = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required|min:10',
            'email' => 'required|email|unique:users,email',
            'dob' => 'required|date|before:' . Carbon::now()->subYears(18)->format('Y-m-d'),
            'gender' => 'required',
            'profile' => 'required|image|mimes:jpg,png|max:2048',
            'resume' => 'required|mimes:pdf,docx|max:2048',
            'address' => 'required',

        ], [
            'dob.before' => 'DOB should be greater than 18 years',
            'email.unique' => 'Email address already exists.'

        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            if ($request->hasFile('profile')) {
                $data['profile'] = Self::uploadFile($request->file('profile'), 'profile');
            }
        
            if ($request->hasFile('resume')) {
                $data['resume'] =Self::uploadFile($request->file('resume'), 'resume');
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
                return response()->json(['code'=>200,'message'=>'User added Successfully!']);
            } else {
                return response()->json(['code'=>401,'message'=>'Something went wrong']);
            }
        }
    }

    public static function changepassworddiv($id, $table)
    {
        $data['id'] = $id;
        $data['table'] = $table;
        return view('admin/users/change_password', $data);
    }



    public static function updatepassword(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'rowid' => 'required',
            'table' => 'required',
            'new_password' => 'required|min:6',
            'confirm_password' => 'required|min:6',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            if ($request->new_password == $request->confirm_password) {

                $savedata['password'] = Hash::make($request->new_password);
                $query = DB::table($request->table)->where('id', $request->rowid)->update($savedata);

                if ($query) {
                    return response()->json(['code' => 200, 'message' => 'Password Changed Successfully']);
                } else {
                    return response()->json(['code' => 400, 'message' => 'Something went wrong']);
                }
            } else {
                return response()->json(['code' => 400, 'message' => 'Password & Confirm Password must be same']);
            }
        }
    }




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

}




?>
<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Common;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class DashboardController extends Controller
{
    // index function
    public static function index()  {
        return view('admin.dashboard');
    }


    public static function change_password() {
        return view('admin.change_password');
    }


    public static function update_password(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'current_password' => 'required|min:6',
            'new_password' => 'required|min:6',
            'confirm_password' => 'required|min:6'
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
             $exist = DB::table('user_table')->where('id',getlogindetail('id'))->first();

            if(Hash::check($request->current_password, $exist->password)) {

                if ($request->new_password == $request->confirm_password) {

                    $savedata['password'] = Hash::make($request->new_password);
                    $id = getlogindetail('id');

                    $query = DB::table('user_table')->where('id',$id)->update($savedata);

                    if ($query) {
                        return response()->json(['code' => 200, 'message' => 'Password Updated Successfully']);
                    } else {
                        return response()->json(['code' => 400, 'message' => 'Something went wrong']);
                    }
                }else {
                    return response()->json(['code' => 400, 'message' => 'Password & Confirm Password must be same']);
                }
            }else {
                return response()->json(['code' => 400, 'message' => 'Current Password not matched']);
            }
        }
    }


}

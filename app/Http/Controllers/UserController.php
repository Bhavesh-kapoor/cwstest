<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserTable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['users'] = UserTable::where('genre','!=','admin')->get();
        return view('admin.users.list',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.users.add');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name'=>'required',
            'email'=>'required|email|unique:user_table',
            'password'=>'required',
            'phone'=>'required|min:10',
              
        ]);
        if (!empty($request->has('image'))) {
            $file = $request->file('image');
             $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/users/'), $filename);
        }
        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        }else{
           $query= UserTable::insert(array_merge($request->except('_token','password','image'), ['image' => $filename ?? '', 'password' => Hash::make($request->input('password')),'genre'=>'user']));
            if ($query) {
                // 
                return response()->json(['code' => '200', 'message' => 'User Added Successfully']);
            }
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AuthoriseAccessm extends Model
{
    use HasFactory;
    public function sidebarname(){
            return $this->belongsTo(SidebarAttr::class,'sidebar_id');
    }
    
    static  public function getPermission($userid){
        return AuthoriseAccessm::where('user_id' ,$userid)->get();
    }
}

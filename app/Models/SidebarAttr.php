<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Scopes\FlagScope;

class SidebarAttr extends Model
{
    use HasFactory;

    protected static function boot()
    {
        parent::boot();

        return static::addGlobalScope(new FlagScope);
    }
    public function accessrole(){
        return $this->belongsTo(AuthoriseAccessm::class,'id');
    }

}

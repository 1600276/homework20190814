<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $table = "departments";
    protected $primaryKey = 'departmentId';
    public $timestamps = false;

    function employees() {
        return $this->hasMany(Employee::class, 'departmentId');
    }
}

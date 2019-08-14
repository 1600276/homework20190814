<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $table = "employees";
    protected $primaryKey = 'employeeId';
    public $timestamps = false;

    function department() {
        return $this->belongsTo(Department::class, 'departmentId');
    }
}

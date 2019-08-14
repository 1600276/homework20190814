<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    protected $table = "announcements";
    protected $primaryKey = 'announcementId';
    
    function Employee() {
        return $this->belongsTo(Employee::class, 'employeeId');
    }
}

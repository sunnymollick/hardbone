<?php

namespace App\Models;

use App\Models\Backend\Project;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectImage extends Model
{
    use HasFactory;

    protected $fillable = [
        'project_id',
        'image_path'
    ];

    // Add relationships if needed
    public function project()
    {
        return $this->belongsTo(Project::class);
    }
}

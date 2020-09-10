<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    public $imestamps = false;

    protected $fillable = array('name', 'description', 'value', 'quantity');
    protected $guarded = ['id'];
}

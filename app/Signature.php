<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Signature extends Model
{
    //
    protected $fillable = ['name', 'email', 'body', 'flagged_at'];

    public function scopeIgnoreFlagged($query)
    {
        return $query->where('flagged_at', null);
    }

    public function flag()
    {
        return $this->update(['flagged_at' => \Carbon\Carbon::now()]);
    }

    public function getAvatarAttribute()
    {
        return sprintf('https://www.gravatar.com/avatar/%s?d=robohash&s=300', md5( strtolower( trim( $this->email ) ) ));
    }
}

<?php

use App\Models\Dashboard;
use App\Models\AuthoriseAccessm;

// get login details
if (!function_exists('getlogindetail')) {
    function getlogindetail($string)
    {
        $sess = session('session_admin');
        return $sess[$string] ?? '';
    }
}



if (!function_exists('getsidebarmodules')) {
    function getsidebarmodules()
    {
        $det = Dashboard::getsidebardetails();
        $mainarr = array();

        if (!empty($det)) {
            foreach ($det as $value) {
                array_push($mainarr, array('sidebar_id' => $value['sidebar_id'], 'sidebar_name' => $value['sidebar_name']));
            }
        }

        return $mainarr;
    }
}





if (!function_exists('getwebdetail')) {
    function  getwebdetail($string)
    {
        $result = Dashboard::getwebdetail($string);

        return $result->$string ?? '';
    }
}



if(!function_exists('sidbarAccess')){
    function sidbarAccess(){

        return AuthoriseAccessm::with('sidebarname')->where('user_id',getlogindetail('id'))->where('can_view','1')->get();

    }

}

<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Admin_Trash extends Controller {

    public function action_index()
    {
        echo View::factory('admin/blocks/V_trash');
    }

} // End Welcome
<?php

namespace App\Models;

class Advertising_model extends Model {

    function get()
    {
        $q = "SELECT * FROM Tbl_barang";
        
        $gData = $this->db->query($q);
        return $gData->result_array();
    }

}
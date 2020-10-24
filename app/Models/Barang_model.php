<?php namespace App\Models;
 
use CodeIgniter\Model;
 
class Barang_model extends Model
{
     
    public function get()
    {
        $builder = $this->db->table('Tbl_barang');
        return $builder->get();
    }
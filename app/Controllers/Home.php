<?php namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Barang_model;
class Home extends BaseController
{
	public function index()
	{
		// return view('welcome_message');

		$model = new Barang_model();
		$data['product']  = $model->get()->getResult();

		// print_r($model);
		// die();
		
		// // echo "<pre>";
		print_r($data['product']);
		die();
		
        // echo view('product_view', $data);
	}

	//--------------------------------------------------------------------

}

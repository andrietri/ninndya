<?php namespace App\Controllers;

class Home extends BaseController
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model("barang_model");
	}

	public function index()
	{
		// return view('welcome_message');

		$data["page"]="menu_gallery_view";
		$data["config"] = $this->login_model->get_data();

		$list = $this->barang_model->get();

		echo "<pre>";
		print_r($list);
		die();

		// $this->load->view('list_barang');
	}

	//--------------------------------------------------------------------

}

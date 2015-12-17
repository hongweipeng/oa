<?php


class IndexAction extends CommonAction {
	protected $config=array('app_type'=>'asst');
	// 框架首页

	public function index() {
		//$this->display();
		$this -> redirect("Home/index");
	}
}
?>
<?php


class RankAction extends CommonAction {
	protected $config=array('app_type'=>'master');
	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['rank_no|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}
	
	function del(){
		$id=$_POST['id'];
		$this->_destory($id);		
	}
}
?>
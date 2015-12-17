<?php


class NewsFolderAction extends SystemFolderAction {
	protected $config=array('app_type'=>'master');
	//过滤查询字段
	function _search_filter(&$map) {
		$map['name'] = array('like', "%" . $_POST['name'] . "%");
		$map['is_del'] = array('eq', '0');
	}

	function index() {
		$this -> assign("folder_name", "文件夹管理");
		$this ->_index();
	}
}

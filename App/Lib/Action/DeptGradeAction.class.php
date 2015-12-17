<?php


class DeptGradeAction extends CommonAction {
	//app 类型
	protected $config = array('app_type' => 'master');

	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])) {
			$map['grade_no|name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}

	public function index() {
		$model = M("DeptGrade");
		$list = $model -> order('sort') -> select();
		$this -> assign('list', $list);
		$this -> display();
	}

	function del() {
		$id = $_POST['id'];
		$this -> _destory($id);
	}

}
?>
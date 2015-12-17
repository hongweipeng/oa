<?php


class FlowTypeAction extends CommonAction {
    protected $config=array('app_type'=>'master');

	//过滤查询字段
	function _search_filter(&$map) {
		if (!empty($_POST['keyword'])){
			$map['name'] = array('like', "%" . $_POST['keyword'] . "%");
		}
	}

	function add(){
		$widget['editor']=true;
		$this->assign("widget",$widget);
		
		$this -> assign("user_id",get_user_id());
		$this ->_assign_tag_list();
		$this ->_assign_duty_list();				
		$this->display();
	}
	
	function index(){
		$model = D("FlowTypeView");
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$list = $model -> where($map) ->order('tag,sort')-> select();
		$this -> assign('list', $list);
		$this ->_assign_tag_list();
		$this -> display();
		return;
	}

	function mark() {
   		$action = $_REQUEST['action'];
		$id = $_REQUEST["id"];
		$val = $_REQUEST["val"];
		if (!empty($id)) {
			switch ($action){
				case 'del' :					
						$result=$this->_destory($id);
						if ($result) {
							$this -> ajaxReturn('', "删除成功", 1);
						} else {
							$this -> ajaxReturn('', "删除失败", 0);
						}
					break;
				case 'move_folder' :
					if (!empty($id)){
						$model = D("SystemTag");
						$model -> del_data_by_row($id);
						if (!empty($val)){
							$result = $model -> set_tag($id,$val);
							$field = 'tag';
							$result=$this -> _set_field($id, $field, $val);
						}
					};
				if ($result !== false) {
					$this -> assign('jumpUrl', get_return_url());
					$this -> success('操作成功!');
				} else {
					//失败提示
					$this -> error('操作失败!');
				}
			}
		}
	}
	
	protected function _assign_tag_list() {
		$model = D("SystemTag");
		$tag_list = $model -> get_tag_list('id,name');
		$this -> assign("tag_list", $tag_list);
	}
	public $data = "";
	public function addExport($str){
		$this->data .= $str;
	
	}
	
	
	public function export(){
		$model = D("FlowTypeView");
		$map = $this -> _search();
		if (method_exists($this, '_search_filter')) {
			$this -> _search_filter($map);
		}

		$list = $model -> where($map) ->order('tag,sort')-> select();
		//var_dump($list);exit;
		header ( "Content-type:application/vnd.ms-excel;charset=utf-8" );
		header("Content-type:application/vnd.ms-excel");
		header("Content-Disposition:attachment;filename=test_data.xls");
		$this->addExport( '<table border="1">');
		$this->addExport( '<tr><td>名称</td><td>分组</td><td>审核步骤</td><td>时间</td><td>地点</td><td>金额</td><td>内容</td></tr>');
		$i=1;
		foreach($list as $row){
			$this->addExport( '<tr>');
			$this->addExport( "<td>{$row['name']}</td>");
			$this->addExport( "<td>{$row['tag_name']}</td>");
			$this->addExport( "<td>shengge</td>");
			$this->addExport( "<td>{$row['time']}</td>");
			$this->addExport( "<td>{$row['place']}</td>");
			$this->addExport( "<td>{$row['money']}</td>");
			$this->addExport( "<td>{$row['content']}</td>");
			$this->addExport( '</tr>');
			$i++;
		}
		
		$this->addExport( '<tr>');
		$this->addExport( "<td>总计</td>");
		$this->addExport( "<td></td><td></td><td></td><td></td>");
		$this->addExport( "<td>=SUM(F2:F".$i.")</td>");
		$this->addExport( "<td></td>");
		$this->addExport( '</tr>');
		
		
		$this->addExport( '</table>');
		echo  iconv('utf-8','GB18030',$this->data);
		
		
		/*$this -> assign('list', $list);
		$this ->_assign_tag_list();
		$this -> display();
		return;*/
	}
	protected function _assign_duty_list() {
		$model = D("Duty");
		$where['is_del']=array('eq',0);
		$duty_list = $model ->where($where)->order('sort')->getField("id,name");
		$this -> assign("duty_list",$duty_list);
	}
	
	function tag_manage() {
		$this -> _tag_manage("分组管理",false);
	}

	function edit() {
		$widget['editor']=true;
		$this->assign("widget",$widget);			
		$this -> assign("user_id",get_user_id());
		$model = D("FlowTypeView");
		$id = $_REQUEST['id'];
		$vo = $model -> getById($id);
		$this -> assign('vo', $vo);
		$this->_assign_tag_list();
		$this->_assign_duty_list();
		$this -> display();
	}
	
	function field(){
		$widget['editor'] = true;
		$this -> assign("widget", $widget);
				
		if($_POST){
			$opmode = $_POST["opmode"];
			$model = D("FlowField");
			if (false === $model -> create()) {
				$this -> error($model -> getError());
			}
			if ($opmode == "add"){
				$list = $model -> add();
				if ($list !== false) {//保存成功
					$this -> assign('jumpUrl', get_return_url());
					$this -> success('新增成功!');
				} else {
					$this -> error('新增失败!');
					//失败提示
				}
			}
			if ($opmode == "edit") {
				$list = $model -> save();
				if ($list !== false) {//保存成功
					$this -> assign('jumpUrl', get_return_url());
					$this -> success('保存成功!');
				} else {
					$this -> error('保存失败!');
					//失败提示
				}
			}
			if ($opmode == "del") {
				$id = $_REQUEST['id'];
				$list=$model ->where("id=$id")->delete();
				if ($list !== false) {//保存成功
					$this -> assign('jumpUrl', get_return_url());
					$this -> success('删除成功!');
				} else {
					$this -> error('删除失败!');
					//失败提示
				}
			}
		}

		$widget['date'] = true;					

		$this -> assign("widget", $widget);		

		$model = D("FlowField");
		$type_id=$_REQUEST['type_id'];
		$this->assign('type_id',$type_id);

		$where['type_id']=array('eq',$type_id);
		$where['is_del']=0;

		$field_list = $model ->where($where)->order('sort asc')->select();
		
		$tree = list_to_tree($field_list);
		$this -> assign('menu',sub_tree_menu($tree));

		$this -> assign("field_list", $field_list);
		$this -> display();
	}

	function get_field(){
		$id=$_REQUEST['id'];
		$model=M("FlowField");
		$vo = $model -> getById($id);
		if ($this -> isAjax()) {
			if ($vo !== false) {// 读取成功
				$this -> ajaxReturn($vo, "", 0);
			} else {
				die ;
			}
		}
	}
}
?>
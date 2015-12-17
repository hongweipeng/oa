<?php


class FileModel extends CommonModel {

	function get_list($sid){
		if (is_array($sid)) {
			$where['sid'] = array("in", array_filter($sid));
		} else {
			$where['sid'] = array('in', array_filter(explode(';', $sid)));
		}
		$list=M("File")->where($where)->getFiled('id','save_name');
		return $list;
	}
}
?>
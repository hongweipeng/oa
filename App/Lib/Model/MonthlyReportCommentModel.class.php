<?php


class MonthlyReportCommentModel extends CommonModel {
	// 自动验证设置 
	function _after_insert($data,$options){
		$doc_id=$data["doc_id"];
		M("MonthlyReport")->where("id=$doc_id")->setField("update_time",time());
	}
}	
?>
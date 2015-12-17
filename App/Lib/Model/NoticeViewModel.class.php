<?php



class NoticeViewModel extends ViewModel {
	public $viewFields=array(
		'Notice'=>array('*'),
		'SystemFolder'=>array('name'=>'folder_name','_on'=>'Notice.folder=SystemFolder.id')
		);
}
?>
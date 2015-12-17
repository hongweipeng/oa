<?php


class NewsViewModel extends ViewModel {
	public $viewFields=array(
		'News'=>array('*'),
		'SystemFolder'=>array('name'=>'folder_name','_on'=>'News.folder=SystemFolder.id')
		);
}
?>
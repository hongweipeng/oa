<?php


class XmkViewModel extends ViewModel {
	public $viewFields=array(
		'Xmk'=>array('*'),
		'SystemFolder'=>array('name'=>'folder_name','_on'=>'Xmk.folder=SystemFolder.id'),
		'XmkLevel'=>array('_table'=>'system_config','_as'=>'XmkLevel','name'=>'level_name','_on'=>'Xmk.level=XmkLevel.val and XmkLevel.code=\'XMK_LEVEL\''),
		'XmkStatus'=>array('_table'=>'system_config','_as'=>'XmkStatus','name'=>'status_name','_on'=>'Xmk.status=XmkStatus.val and XmkStatus.code=\'XMK_STATUS\''),
		);
}
?>
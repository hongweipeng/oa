<?php


class FlowViewModel extends ViewModel {
	public $viewFields=array(
		'Flow'=>array('*'),
		'FlowType'=>array('name'=>'type_name','_on'=>'FlowType.id=Flow.type')
		);
}
?>
<?php


class ProductTypeViewModel extends ViewModel {
	public $viewFields=array(
		'ProductType'=>array('*'),
		'SystemTag'=>array('name'=>'tag_name','_on'=>'ProductType.tag=SystemTag.id')
		);
}
?>
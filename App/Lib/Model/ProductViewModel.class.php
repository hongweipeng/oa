<?php


class ProductViewModel extends ViewModel {
	public $viewFields=array(
		'Product'=>array('*'),
		'ProductType'=>array('name'=>'type_name','_on'=>'ProductType.id=Product.type')
		);
}
?>
<?php


class ProductModel extends CommonModel {
	// 自动验证设置
	protected $_validate = array('name', 'require', '标题必须', 1);
	// 自动填充设置

}
?>
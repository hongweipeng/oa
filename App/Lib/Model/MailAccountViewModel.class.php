<?php


class MailAccountViewModel extends ViewModel {
	public $viewFields=array(
		'MailAccount'=>array('*'),
		'User'=>array('_on'=>'MailAccount.id=User.id')
		);
}
?>
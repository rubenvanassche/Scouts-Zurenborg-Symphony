<?php

	require_once('default.ckeditor.php');

	Class formatterckeditor_normal extends DefaultTextFormatter {
		public function about(){
			$about = parent::about();
			$about['name'] = 'CKEditor : Normal';
			return $about;
		}
	}


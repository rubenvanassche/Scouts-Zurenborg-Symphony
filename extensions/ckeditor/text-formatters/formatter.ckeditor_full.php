<?php

	require_once('default.ckeditor.php');

	Class formatterckeditor_full extends DefaultTextFormatter {
		public function about(){
			$about = parent::about();
			$about['name'] = 'CKEditor : Full';
			return $about;
		}
	}


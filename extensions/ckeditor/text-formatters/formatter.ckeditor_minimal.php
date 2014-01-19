<?php

	require_once('default.ckeditor.php');

	Class formatterckeditor_minimal extends DefaultTextFormatter {
		public function about(){
			$about = parent::about();
			$about['name'] = 'CKEditor : Minimal';
			return $about;
		}
	}


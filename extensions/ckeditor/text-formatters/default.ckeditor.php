<?php

Class DefaultTextFormatter extends TextFormatter{

	function about(){
		return array(
			'name' => 'CKEditor',
			'version' => '1.3',
			'release-date' => '2012-04-24',
			'author' => array(
				'name'     => '<a href="http://thecocoabots.com">Tony Arnold</a>, <a href="http://gielberkers.com">Giel Berkers</a>'
			),
			'description' => 'Includes CKEditor, a web-based XHTML editor developed by Frederico Knabben.'
		);
	}

	function run($string) {
		// Remove comments (sometimes Word will leave nasty comments: -->
		$string = preg_replace('/<!--(.*)-->/Uis', '', $string);
		return $string;
	}

}


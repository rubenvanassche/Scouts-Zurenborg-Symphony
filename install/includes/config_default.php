<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '20',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'version' => '2.3.1',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => 'localhost',
			'port' => '3306',
			'user' => null,
			'password' => null,
			'db' => null,
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Scouts Zurenborg',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'm/d/Y',
			'datetime_separator' => ' ',
			'timezone' => 'Europe/Brussels',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
			'disable_regular_rules' => 'no',
		),
		########


		###### REDACTOR ######
		'redactor' => array(
			'lang' => 'en',
			'direction_ltr' => 'yes',
			'enable_toolbar' => 'yes',
			'enable_source' => 'yes',
			'enable_focus' => 'no',
			'enable_shortcuts' => 'yes',
			'enable_autoresizing' => 'yes',
			'enable_cleanup' => 'yes',
			'enable_fixed' => 'no',
			'enable_fixedbox' => 'no',
			'enable_paragraphy' => 'yes',
			'enable_convertlinks' => 'yes',
			'enable_convertdivs' => 'yes',
			'enable_fileupload' => 'no',
			'enable_imageupload' => 'yes',
			'enable_overlay' => 'yes',
			'enable_observeimages' => 'yes',
			'enable_airmode' => 'no',
			'enable_wym' => 'no',
			'enable_mobile' => 'yes',
			'buttons' => 'html,formatting,bold,italic,deleted,unorderedlist,orderedlist,outdent,indent,image,video,file,table,link,fontcolor,backcolor,alignleft,aligncenter,alignright,justify,horizontalrule',
			'airbuttons' => 'formatting,bold,italic,deleted,unorderedlist,orderedlist,outdent,indent,fontcolor,backcolor',
			'allowedtags' => 'code,span,div,label,a,br,p,b,i,del,strike,u,img,video,audio,iframe,object,embed,param,blockquote,mark,cite,small,ul,ol,li,hr,dl,dt,dd,sup,sub,big,pre,figure,figcaption,strong,em,table,tr,td,th,tbody,thead,tfoot,h1,h2,h3,h4,h5,h6',
			'filepath' => '/Users/Ruben/Sites/symphony/workspace/redactor/files',
			'imagepath' => '/Users/Ruben/Sites/symphony/workspace/redactor/images',
		),
		########


		###### DOCUMENTATION ######
		'documentation' => array(
			'text-formatter' => 'redactor',
			'button-text' => 'Help',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_maandbladen_sortby' => '93',
			'section_maandbladen_order' => 'asc',
			'section_takken_sortby' => '115',
			'section_takken_order' => 'asc',
			'section_banners_sortby' => '78',
			'section_banners_order' => 'asc',
		),
		########


		###### CACHELITE ######
		'cachelite' => array(
			'lifetime' => '0',
			'show-comments' => 'yes',
			'backend-delegates' => 'yes',
		),
		########
	);

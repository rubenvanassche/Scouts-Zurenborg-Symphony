<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcebanners extends SectionDatasource{

		public $dsParamROOTELEMENT = 'banners';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'80' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'inhoud',
				'link',
				'kleur'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'banners',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-07-08T14:43:14+00:00'
			);
		}

		public function getSource(){
			return '22';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

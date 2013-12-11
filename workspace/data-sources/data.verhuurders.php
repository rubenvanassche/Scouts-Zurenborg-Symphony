<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceverhuurders extends SectionDatasource{

		public $dsParamROOTELEMENT = 'verhuurders';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'88' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'telefoonnummer'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'verhuurders',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-07-08T15:20:14+00:00'
			);
		}

		public function getSource(){
			return '10';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

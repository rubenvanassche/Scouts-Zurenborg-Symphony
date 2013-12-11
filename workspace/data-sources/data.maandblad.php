<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcemaandblad extends SectionDatasource{

		public $dsParamROOTELEMENT = 'maandblad';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = 'selector';
		public $dsParamSORT = 'system:creation-date';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'93' => '{$selector}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'maand',
				'selector',
				'voorwoord: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Maandblad',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-07-08T19:13:57+00:00'
			);
		}

		public function getSource(){
			return '19';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

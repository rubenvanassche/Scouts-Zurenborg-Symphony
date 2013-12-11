<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcemaandblad_extra extends SectionDatasource{

		public $dsParamROOTELEMENT = 'maandblad-extra';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = 'selector';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		public $dsParamFILTERS = array(
				'101' => '{$selector}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'afbeelding',
				'tekst: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Maandblad Extra',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-07-08T19:42:35+00:00'
			);
		}

		public function getSource(){
			return '25';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

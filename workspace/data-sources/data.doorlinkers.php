<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcedoorlinkers extends SectionDatasource{

		public $dsParamROOTELEMENT = 'doorlinkers';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = 'naam';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'126' => '{$naam}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'link'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Doorlinkers',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://www.scouts-zurenborg.be',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-12-11T12:15:09+00:00'
			);
		}

		public function getSource(){
			return '28';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

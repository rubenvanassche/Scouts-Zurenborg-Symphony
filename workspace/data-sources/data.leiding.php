<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceleiding extends SectionDatasource{

		public $dsParamROOTELEMENT = 'leiding';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '50';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = 'taknaam';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'37' => '{$taknaam}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'straat',
				'huisnummer',
				'stad',
				'postcode',
				'telefoonnummer',
				'foto',
				'tak',
				'groepsleiding',
				'materiaalmeester',
				'materiaal-verhuurder',
				'website',
				'knutselkot',
				'sportkot',
				'bbqkot'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'leiding',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-09-12T14:59:34+00:00'
			);
		}

		public function getSource(){
			return '10';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

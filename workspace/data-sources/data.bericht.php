<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcebericht extends SectionDatasource{

		public $dsParamROOTELEMENT = 'bericht';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$id';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$id}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'titel',
				'foto',
				'inhoud: formatted',
				'achtergrond'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'bericht',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-09-06T21:42:46+00:00'
			);
		}

		public function getSource(){
			return '14';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

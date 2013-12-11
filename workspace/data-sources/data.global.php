<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceglobal extends SectionDatasource{

		public $dsParamROOTELEMENT = 'global';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'volledige-naam',
				'adres',
				'rekeningnummer',
				'lengtegraad',
				'breedtegraad',
				'contact-informatie: formatted',
				'vzw-informatie: formatted',
				'materiaalverhuur-informatie: formatted',
				'vzw-logo',
				'materiaalmeesters-logo',
				'website-team-logo',
				'statistieken-code'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Global',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-07-08T15:36:57+00:00'
			);
		}

		public function getSource(){
			return '21';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

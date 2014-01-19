<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcedocumenten extends SectionDatasource{

		public $dsParamROOTELEMENT = 'documenten';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'naam',
				'beschrijving: formatted',
				'bestand'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Documenten',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://scouts-zurenborg.be/nieuw',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-09-12T21:41:53+00:00'
			);
		}

		public function getSource(){
			return '27';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

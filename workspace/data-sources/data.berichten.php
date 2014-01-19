<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceberichten extends SectionDatasource{

		public $dsParamROOTELEMENT = 'berichten';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:date',
				'titel',
				'slagzin',
				'achtergrond'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Berichten',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://scouts-zurenborg.be/nieuw',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-09-14T17:19:06+00:00'
			);
		}

		public function getSource(){
			return '14';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

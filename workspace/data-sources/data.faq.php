<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefaq extends SectionDatasource{

		public $dsParamROOTELEMENT = 'faq';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = 'categorie';
		public $dsParamSORT = 'plaats';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'104' => '{$categorie}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'vraag',
				'antwoord: formatted',
				'categorie'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'FAQ',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://scouts-zurenborg.be/nieuw',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-09-14T22:30:51+00:00'
			);
		}

		public function getSource(){
			return '13';
		}

		public function allowEditorToParse(){
			return true;
		}

	}

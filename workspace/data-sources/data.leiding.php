<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceleiding extends SectionDatasource {

		public $dsParamROOTELEMENT = 'leiding';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '50';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = 'taknaam';
		public $dsParamSORT = 'naam';
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
				'bbqkot',
				'email-adres'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'leiding',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.5',
				'release-date' => '2014-01-31T01:15:16+00:00'
			);
		}

		public function getSource() {
			return '10';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}

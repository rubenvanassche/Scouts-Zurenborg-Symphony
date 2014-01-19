<?php
	$settings = array(

		###### FIELDSET: SCOUTS ######
		array(
			'name' => 'Scouts',
			'sections' => array(),
			'fields' => array(
				array(
					'name' => 'naam',
					'label' => 'De naam van de scouts',
					'type' => 'input',
					'value' => 'Scouts Zurenborg',
				),
				array(
					'name' => 'naamvolledig',
					'label' => 'De volledige naam van de scouts',
					'type' => 'input',
					'value' => 'Scouts-Gidsen 20-72 Zurenborg ',
				),
				array(
					'name' => 'adres',
					'label' => 'Adres',
					'type' => 'input',
					'value' => 'Lange Van Ruusbroecstraat 43A 2018 Antwerpen',
				),
				array(
					'name' => 'rekeningnummer',
					'label' => 'Rekeningnummer',
					'type' => 'input',
					'value' => 'BE26 0682 1003 4329',
				),
				array(
					'name' => 'lengtegraad',
					'label' => 'Lengtegraad lokaal',
					'type' => 'input',
					'value' => '51.208252',
				),
				array(
					'name' => 'breedtegraad',
					'label' => 'Breedtegraad lokaal',
					'type' => 'input',
					'value' => '4.427459',
				),
				array(
					'name' => 'contactinformatie',
					'label' => 'Contact informatie(infopagina)',
					'type' => 'textarea',
					'value' => 'Meer inlichtingen kan men tijdens de vergaderingen verkrijgen om 09.30 uur. Buiten de uren van de scouts is dit mogelijk door te telefoneren naar Dimitri.',
				),
				array(
					'name' => 'materiaalverhuur',
					'label' => 'Materiaalkotverhuur informatie',
					'type' => 'textarea',
					'value' => 'Voor het huren van materiaal  kunt u de prijzen hieronder gebruiken. Materiaalgebruik is gratis voor leiding of oud-leiding maar moet steeds met de materiaalmeesters worden afgesproken. Wenst u iets te huren? Gelieve dan een mail te sturen naar materiaalmeesters@scouts-zurenborg.be met daarin wat u wenst te huren, op welke data en eventueel verdere contactgegevens. U kunt ook bellen naar één van de volgende personen :',
				),
			)
		),
		########

		###### FIELDSET: BANNER ######
		array(
			'name' => 'Banner',
			'sections' => array(),
			'fields' => array(
				array(
					'name' => 'show',
					'label' => 'Weergeven',
					'type' => 'checkbox',
				),
				array(
					'name' => 'color',
					'label' => 'Kleur',
					'type' => 'select',
					'values' => 'rood, geel , blauw, groen',
					'value' => 'groen',
				),
				array(
					'name' => 'text',
					'label' => 'Tekst',
					'type' => 'input',
					'value' => 'Test',
				),
				array(
					'name' => 'link',
					'label' => 'Link',
					'type' => 'input',
					'value' => 'http://google.be',
				),
			)
		),
		########

	);

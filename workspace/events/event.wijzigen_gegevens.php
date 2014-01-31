<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventwijzigen_gegevens extends SectionEvent{

		public $ROOTELEMENT = 'wijzigen-gegevens';

		public $eParamFILTERS = array(
			'member-update-password'
		);

		public static function about(){
			return array(
				'name' => 'Wijzigen gegevens',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.5',
				'release-date' => '2014-01-30T22:53:13+00:00',
				'trigger-condition' => 'action[wijzigen-gegevens]'
			);
		}

		public static function getSource(){
			return '10';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;wijzigen-gegevens result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/wijzigen-gegevens></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;wijzigen-gegevens result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/wijzigen-gegevens></code></pre>
        <p>The following is an example of what is returned if any options return an error:</p>
        <pre class="XML"><code>&lt;wijzigen-gegevens result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient not found&lt;/filter>
  ...
&lt;/wijzigen-gegevens></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Naam
    &lt;input name="fields[naam]" type="text" />
  &lt;/label>
  &lt;label>Straat
    &lt;input name="fields[straat]" type="text" />
  &lt;/label>
  &lt;label>Huisnummer
    &lt;input name="fields[huisnummer]" type="text" />
  &lt;/label>
  &lt;label>Stad
    &lt;input name="fields[stad]" type="text" />
  &lt;/label>
  &lt;label>Postcode
    &lt;input name="fields[postcode]" type="text" />
  &lt;/label>
  &lt;label>Telefoonnummer
    &lt;input name="fields[telefoonnummer]" type="text" />
  &lt;/label>
  &lt;label>Foto
    &lt;input name="fields[foto]" type="file" />
  &lt;/label>
  &lt;label>Tak
    &lt;select name="fields[tak]">
      &lt;option value="Chikai">Chikai&lt;/option>
      &lt;option value="Givers I">Givers I&lt;/option>
      &lt;option value="Givers II">Givers II&lt;/option>
      &lt;option value="Jacala">Jacala&lt;/option>
      &lt;option value="Jins">Jins&lt;/option>
      &lt;option value="Jonggivers I">Jonggivers I&lt;/option>
      &lt;option value="Jonggivers II">Jonggivers II&lt;/option>
      &lt;option value="Kapoenen">Kapoenen&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Groepsleiding
    &lt;input name="fields[groepsleiding]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Materiaalmeester
    &lt;input name="fields[materiaalmeester]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Materiaal Verhuurder
    &lt;input name="fields[materiaal-verhuurder]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Website
    &lt;input name="fields[website]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Knutselkot
    &lt;input name="fields[knutselkot]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Sportkot
    &lt;input name="fields[sportkot]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>BBQkot
    &lt;input name="fields[bbqkot]" type="checkbox" value="yes" />
  &lt;/label>
  &lt;label>Gebruikersnaam
    &lt;input name="fields[gebruikersnaam]" type="text" />
  &lt;/label>
  &lt;fieldset>
    &lt;label>Wachtwoord
      &lt;input name="fields[wachtwoord][password]" type="password" />
    &lt;/label>
    &lt;label>Wachtwoord Confirm
      &lt;input name="fields[wachtwoord][confirm]" type="password" />
    &lt;/label>
  &lt;/fieldset>
  &lt;label>Privileges
    &lt;select name="fields[privileges]">
      &lt;option value="1">Public&lt;/option>
      &lt;option value="2">Leiding&lt;/option>
      &lt;option value="3">Groepsleiding&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;input name="action[wijzigen-gegevens]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost:8888/symphony/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['wijzigen-gegevens'])) return $this->__trigger();
		}

	}

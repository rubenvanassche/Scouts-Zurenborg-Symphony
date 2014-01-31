<?php

	require_once(TOOLKIT . '/class.event.php');

	Class eventnieuw_evenement extends SectionEvent{

		public $ROOTELEMENT = 'nieuw-evenement';

		public $eParamFILTERS = array(
			
		);

		public static function about(){
			return array(
				'name' => 'nieuw evenement',
				'author' => array(
					'name' => 'ruben van assche',
					'website' => 'http://localhost:8888/symphony',
					'email' => 'rubenvanassche@gmail.com'),
				'version' => 'Symphony 2.3.5',
				'release-date' => '2014-01-31T16:27:06+00:00',
				'trigger-condition' => 'action[nieuw-evenement]'
			);
		}

		public static function getSource(){
			return '29';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;nieuw-evenement result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/nieuw-evenement></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;nieuw-evenement result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/nieuw-evenement></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Naam
    &lt;input name="fields[naam]" type="text" />
  &lt;/label>
  &lt;label>Datum (meerdere dagen? Zie help)
    &lt;input name="fields[datum][start][]" type="text" />
    &lt;input name="fields[datum][end][]" type="text" />
  &lt;/label>
  &lt;label>Beschrijving
    &lt;textarea name="fields[beschrijving]" rows="15" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;input name="action[nieuw-evenement]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost:8888/symphony/success/" /></code></pre>';
		}

		public function load(){
			if(isset($_POST['action']['nieuw-evenement'])) return $this->__trigger();
		}

	}

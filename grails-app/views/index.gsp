<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Diski Name Generator</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" controller="CompetitionEntry" action="list">Competition Entry</g:link></li>
            <li><g:link class="list" controller="MobiUser" action="list">Mobi Usery</g:link></li>
            <li><g:link class="list" controller="DiskiName" action="list">Diski Name</g:link></li>
        </ul>
    </div>


		<div id="page-body" role="main">
			<h1>Welcome to Klipdrift Premium Name Generator</h1>
			<p>
                This tool allows a user to upload competetion entries, mobi users and diski names.
                You can do this by either adding a single entry or importing from a file.

                You can randomly add diski names to competition entries and mobi users by selecting that action.
                One may also download a csv file of Competition Entries and Mobi Users once diski names have been assigned.
			</p>


		</div>
	</body>
</html>

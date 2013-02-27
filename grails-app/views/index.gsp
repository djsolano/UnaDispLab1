<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Universidad</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 8em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 30px;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 12px;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				height: 400px;
			}

			h2 {
				text-align: center;
				margin-top: 15px;
				margin-bottom: 15px;
				font-size: 20px;
			}

			p {
				margin-left:20px;
				margin-right:20px;
				text-align:justify;
				font-size: 20px;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

		</style>
	</head>
	<body>
	<div id="page-body">
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<h2>Bienvenido al Sistema de Matricula</h2>
		<br>
		<p>Bienvenidos al Sistema de Matricula de la Universidad Nacional,
		donde usted podra realizar todos los tramites para matricula. Sirvase en realizar 
		los tramites que sean necesarios</p>
	</div>
	</body>
</html>

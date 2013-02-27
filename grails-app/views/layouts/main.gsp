<%@ page import="universidad.Constantes"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<resource:accordion skin="accordion" />
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="grailsLogo" role="banner">
		<a href="http://www.una.ac.cr"><img
			src="${resource(dir: 'images', file: 'grails_logo.png')}"
			alt="Grails" /></a>
	</div>
	<div class="clear"></div>
	<div class="LeftSide">
	<richui:accordion>

						<sec:ifLoggedIn>

							<sec:ifAnyGranted roles="${Constantes.ROLE_ADMINISTRADOR}, ${Constantes.ROLE_MATRICULADOR}, ${Constantes.ROLE_PROFESOR},${Constantes.ROLE_ALUMNO}">
								<sec:ifAnyGranted roles="${Constantes.ROLE_ADMINISTRADOR}">
									<richui:accordionItem caption="Inicio">
										<g:link controller="index" action="index">
											<g:message code="menu.inicio" />
										</g:link>
									</richui:accordionItem>
									<richui:accordionItem caption="Carrera">
										<ul>
											<li><g:link class="create" controller="carrera"
													action="create">
													<g:message code="carrera.create" />
												</g:link></li>
											<li><g:link class="list" controller="carrera"
													action="list">
													<g:message code="carrera.list" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
									<richui:accordionItem caption="Curso">
										<ul>
											<li><g:link class="create" controller="curso"
													action="create">
													<g:message code="curso.create" />
												</g:link></li>
											<li><g:link class="list" controller="curso"
													action="list">
													<g:message code="curso.list" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
									<richui:accordionItem caption="Usuario">
										<ul>
											<li><g:link class="create" controller="usuario"
													action="create">
													<g:message code="usuario.create" />
												</g:link></li>
											<li><g:link class="list" controller="usuario"
													action="list">
													<g:message code="usuario.list" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
									<richui:accordionItem caption="Ciclo">
										<ul>
											<li><g:link class="create" controller="ciclo"
													action="create">
													<g:message code="ciclo.create" />
												</g:link></li>
											<li><g:link class="list" controller="ciclo"
													action="list">
													<g:message code="ciclo.list" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
									<richui:accordionItem caption="Alumno">
										<ul>
											<li><g:link class="create" controller="alumno"
													action="create">
													<g:message code="alumno.create" />
												</g:link></li>
											<li><g:link class="list" controller="alumno"
													action="list">
													<g:message code="alumno.list" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
								</sec:ifAnyGranted>
								<sec:ifAnyGranted roles="${Constantes.ROLE_ALUMNO}">
									<richui:accordionItem caption="Historial">
										<ul>
											<li><g:link class="list" controller="alumnoCurso"
													action="list">
													<g:message code="alumno.historial" />
												</g:link></li>
										</ul>
									</richui:accordionItem>
								</sec:ifAnyGranted>
							</sec:ifAnyGranted>
							<richui:accordionItem caption="Cerrar Sesi\u00F3n">
								<g:link controller='logout' action='index'>
									<g:message code="menu.logout" />
								</g:link>
							</richui:accordionItem>
						</sec:ifLoggedIn>
					</richui:accordion>
	</div>
	<div class="MainPanel">
	<g:layoutBody style="max-width:1100px; !important;" />
	
	</div>

	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />
	<r:layoutResources />

</body>
</html>

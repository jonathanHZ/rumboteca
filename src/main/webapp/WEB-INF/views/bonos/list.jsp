<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Rumboteca</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
  <!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
  <!--script src="js/less-1.3.3.min.js"></script-->
  <!--append ‘#!watch’ to the browser URL, then refresh the page. -->

  <link href="../lib/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="../lib/resources/css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../lib/resources/img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../lib/resources/img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../lib/resources/img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="../lib/resources/img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="../lib/resources/img/favicon.png">
  
  <script type="text/javascript" src="../lib/resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="../lib/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="../lib/resources/js/scripts.js"></script>
  
  <script>
	function changeWallPaging(page) {
		document.wallpagefrm.wallPaging.value = page;
		document.wallpagefrm.submit();		
	}
	
	function alertas() {
		alert("Entre en alert");
	}
  </script>

</head>

<body>
<form name="wallpagefrm" action="wallpage" method="post">
<input type="hidden" name="wallPaging"/>
</form>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Rumboteca</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">	
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#events">Events</a>
						</li>
						<li>
							<a href="#places">Places</a>
						</li>
						<li>
							<a href="#wall">Wall</a>
						</li>
						<li>
							<a href="#wallet">Wallet</a>
						</li>
						<li>
							<a href="#contact">About</a>
						</li>						
					</ul>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control">
						</div> <button type="submit" class="btn btn-default">Search</button>
					</form>
				</div>
			</nav>
			<div class="carousel slide" id="carousel-831421" style="height: 550px">
				
				<div class="carousel-inner" style="height: 550px">
					<c:if test="${not empty pageDataDTOList.advertisementDTOList}">
					  	<c:set var="count" value="1"/>
					  	<c:forEach items="${pageDataDTOList.advertisementDTOList}" var="advertisementDTO">
							<!-- Se adiciona la logica para poner activo o no la imagen -->
						    <c:if test="${count == 1}">
							  <div class="item active">
							</c:if>
							<c:if test="${count == 2}">
							  <div class="item">
							</c:if>
							<c:set var="count" value="2"/>						
								<img alt="300x200" src=<c:out value="${advertisementDTO.photo}"/>>
								<div class="carousel-caption col-md-offset-6 col-md-3 " style="top: 0;">
									<h4>
										<c:out value="${advertisementDTO.tittle}"/>
									</h4>
									<p>
										<c:out value="${advertisementDTO.description}"/>
									</p>
								</div>
							</div>
					  	</c:forEach>
					</c:if>
				</div> 
				<a class="left carousel-control" href="#carousel-831421" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-831421" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
	<div class="row clearfix" id="events">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					Events <small>Eventos</small>
				</h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="tabbable" id="tabs-440834">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-287381" data-toggle="tab">Top Then</a>
							</li>
							<li>
								<a href="#panel-380294" data-toggle="tab">Eventos Por Pais</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-287381">
								<div class="row">
									<c:if test="${not empty pageDataDTOList.eventDTOList}">
									<c:forEach items="${pageDataDTOList.eventDTOList}" var="eventDTO">
										<div class="col-md-4">
											<div class="thumbnail" style="height: 450px">
												<img alt="300x200" style="height: 195px" src=<c:out value="${eventDTO.photo}"/>>
												<div class="caption">
													<h3 class="text-center">
														<c:out value="${eventDTO.tittle}"/>
													</h3>
													<p class="text-center" style="height: 100px">
														<c:out value="${eventDTO.description}"/>
													</p>
													<p>
													<a id="modal-225779" href="#modal<c:out value="${eventDTO.id}"/>" role="button" class="btn btn-primary" data-toggle="modal">Ver Informaci�n</a>
													<a id="modal-225779" href="#modalC<c:out value="${eventDTO.id}"/>" role="button" class="btn btn-primary pull-right" data-toggle="modal">Ver Comentarios</a>
													</p>
												</div>
											</div>
										</div>				
										<div class="modal fade" id="modal<c:out value="${eventDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
														<h4 class="modal-title" id="myModalLabel">
															Informacion Evento
														</h4>
													</div>
													<div class="modal-body">
														<div class="thumbnail">
															<img alt="300x200" src=<c:out value="${eventDTO.photo}"/>>
															<div class="caption">
																<h3>
																	<c:out value="${eventDTO.tittle}"/>
																</h3>
																<p>
																	<c:out value="${eventDTO.description}"/>
																</p>
															</div>
														</div>
													</div>
													<div class="modal-footer">
														 <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
													</div>
												</div>
											</div>
										</div>
										<div class="modal fade" id="modalC<c:out value="${eventDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
														<h4 class="modal-title" id="myModalLabel">
															Informacion Evento
														</h4>
													</div>
													<div class="modal-body">
														
													</div>
													<div class="modal-footer">
														 <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
													</div>
												</div>
											</div>
										</div>	
									</c:forEach>
									</c:if>
								</div>
							</div>
							<div class="tab-pane" id="panel-380294">
								<ul class="list-group col-md-2 text-center">
								  <li class="list-group-item" onclick="alertas()">First item</li>
								  <li class="list-group-item">Second item</li>
								  <li class="list-group-item">Third item</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
					
			
		</div>
	</div>
	<div class="row clearfix" id="places">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					Places <small>Discotecas</small>
				</h1>
			</div>
			<div class="row">
				<c:if test="${not empty pageDataDTOList.placeDTOList}">
				<c:forEach items="${pageDataDTOList.placeDTOList}" var="placeDTO">
					<div class="col-md-4">
						<div class="thumbnail" style="height: 450px">
							<img alt="300x200" style="height: 195px" src=<c:out value="${placeDTO.photo}"/>>
							<div class="caption">
								<h3>
									<c:out value="${placeDTO.tittle}"/>
								</h3>
								<p style="height: 100px">
									<c:out value="${placeDTO.description}"/>
								</p>
								<p>
								<a id="modal-225779" href="#modal<c:out value="${placeDTO.id}"/>" role="button" class="btn btn-primary" data-toggle="modal">Ver</a>
								</p>
							</div>
						</div>
					</div>				
					<div class="modal fade" id="modal<c:out value="${placeDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
									<h4 class="modal-title" id="myModalLabel">
										Informacion Discoteca
									</h4>
								</div>
								<div class="modal-body">
									<div class="thumbnail">
										<img alt="300x200" src=<c:out value="${placeDTO.photo}"/>>
										<div class="caption">
											<h3>
												<c:out value="${placeDTO.tittle}"/>
											</h3>
											<p>
												<c:out value="${placeDTO.description}"/>
											</p>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									 <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
								</div>
							</div>
						</div>
					</div>	
				</c:forEach>
				</c:if>
			</div>		
		</div>
	</div>
	<div class="row clearfix" id="wall">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					Social <small>Media</small>
				</h1>
			</div>
			<ul class="nav nav-pills">
				<li class="active">
					 <a href="#"> <span class="badge pull-right">42</span> Lo mas visto</a>
				</li>
				<li>
					 <a href="#"> <span class="badge pull-right">16</span> Lo mas votado</a>
				</li>
			</ul>
			<br>
			<div class="row">
			<c:if test="${not empty pageDataDTOList.wallDTOList}">
				<c:forEach items="${pageDataDTOList.wallDTOList}" var="wallDTO">
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="300x200" src=<c:out value="${wallDTO.photo}"/>>
							<div class="caption">
								<h3>
									<c:out value="${wallDTO.tittle}"/>
								</h3>
								<p>
									<c:out value="${wallDTO.description}"/>
								</p>
								<p>
									<a class="glyphicon glyphicon-thumbs-up" href="#"></a> <a class="glyphicon glyphicon-thumbs-down" href="#"></a> <a class="glyphicon glyphicon-eye-open" href="#"></a>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				</c:if>
			</div>
			<ul class="pagination">
				<li>
					<a href="#">Prev</a>
				</li>
				<li>
					<a href="#" onclick="changeWallPaging(1)">1</a>
				</li>
				<li>
					<a href="#" onclick="changeWallPaging(2)">2</a>
				</li>
				<li>
					<a href="#" onclick="changeWallPaging(3)">3</a>
				</li>
				<li>
					<a href="#">Next</a>
				</li>
			</ul>
			 <!--a id="modal-983796" href="#modal-container-983796" role="button" class="btn" data-toggle="modal">Launch demo modal</a-->
			
			<!--div class="modal fade" id="modal-container-983796" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								Modal title
							</h4>
						</div>
						<div class="modal-body">
							...
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> <button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</div>
					
				</div>
				
			</div-->
			
		</div>
	</div>
	<div class="row clearfix" id="wallet">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					My Wallet <small>Presupuesto</small>
				</h1>
			</div>
			<div class="tabbable" id="tabs-504390">
				<ul class="nav nav-tabs">
					<li>
						<a href="#panel-192836" data-toggle="tab">Licores</a>
					</li>
					<li class="active">
						<a href="#panel-779249" data-toggle="tab">Comida</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-192836">
						<p>
							<table class="table table-hover table-condensed">
								<thead>
									<tr>
										<th>
											#
										</th>
										<th>
											Combo
										</th>
										<th>
											Descripción
										</th>
										<th>
											Precio
										</th>
									</tr>
								</thead>
								<tbody>
									<tr class="active">
										<td>
											1
										</td>
										<td>
											Enfarrados
										</td>
										<td>
											Botella Aguardiente - 4 Sodas 
										</td>
										<td>
											$100.000
										</td>
									</tr>
									<tr class="success">
										<td>
											2
										</td>
										<td>
											Mexicano
										</td>
										<td>
											Botella Tequila - Limones - Sal
										</td>
										<td>
											$120.000
										</td>
									</tr>
									<tr class="warning">
										<td>
											3
										</td>
										<td>
											Ruso
										</td>
										<td>
											Vodka - Jugo Naranja
										</td>
										<td>
											$130.000
										</td>
									</tr>
									<tr class="danger">
										<td>
											4
										</td>
										<td>
											Irlandes
										</td>
										<td>
											Whisky
										</td>
										<td>
											$140.000
										</td>
									</tr>
								</tbody>
							</table>							
						</p>
					</div>
					<div class="tab-pane active" id="panel-779249">
						<p>
							<table class="table table-hover table-condensed">
								<thead>
									<tr>
										<th>
											#
										</th>
										<th>
											Combo
										</th>
										<th>
											Descripción
										</th>
										<th>
											Precio
										</th>
									</tr>
								</thead>
								<tbody>
									<tr class="active">
										<td>
											1
										</td>
										<td>
											Enfarrados
										</td>
										<td>
											10 Empanadas antioqueñas - Picada
										</td>
										<td>
											$50.000
										</td>
									</tr>
									<tr class="success">
										<td>
											2
										</td>
										<td>
											Mexicano
										</td>
										<td>
											6 Fajitas Mixtas
										</td>
										<td>
											$60.000
										</td>
									</tr>
									<tr class="warning">
										<td>
											3
										</td>
										<td>
											Italiano
										</td>
										<td>
											8 Canelones
										</td>
										<td>
											$80.000
										</td>
									</tr>
									<tr class="danger">
										<td>
											4
										</td>
										<td>
											Americano
										</td>
										<td>
											10 Hamburguesas
										</td>
										<td>
											$100.000
										</td>
									</tr>
								</tbody>
							</table>	
						</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="row clearfix" id="contact">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					About <small>Contactenos</small>
				</h1>
			</div>
				
			<section id="contact" class="container content-section text-center">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<!--h2>Contact Start Bootstrap</h2-->
						<p>Feel free to email us to provide some feedback on our templates, give us suggestions for new templates and themes, or to just say hello!</p>
						<p><a href="mailto:feedback@rumboteca.com">feedback@rumboteca.com</a>
						</p>
						<ul class="list-inline banner-social-buttons">
							<li>
								<a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
							</li>
							<li>
								<a href="https://github.com/IronSummitMedia/rumboteca" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
							</li>
							<li>
								<a href="https://plus.google.com/+rumboteca/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
							</li>
						</ul>
					</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
</body>
</html>
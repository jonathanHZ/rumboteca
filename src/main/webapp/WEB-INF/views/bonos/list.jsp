<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <!--append â€˜#!watchâ€™ to the browser URL, then refresh the page. -->

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
	
	function getEventCountry(id) {
		document.CountryPagefrm.submit(id);	
	}
  </script>

</head>

<body>
	<div class="container">
		<div class="row clearfix" >
	     		<div role="tabpanel col-md-12">
			      <!-- Nav tabs -->
			      <ul class="nav nav-tabs navbar navbar-default barra-superior" role="tablist">
			      	<a class="navbar-brand" href="#Eventos">
        				<img alt="Brand" src="../lib/resources/images/brand.png">
     				</a>
			        <li role="presentation" class="active sobre-elemento"><a href="#Eventos" aria-controls="home" role="tab" data-toggle="tab"><h4>Eventos</h4></a></li>
			        <li role="presentation" class="sobre-elemento"><a href="#Lugares" aria-controls="profile" role="tab" data-toggle="tab"><h4>Lugares</h4></a></li>
			        <li role="presentation" class="sobre-elemento"><a href="#Combos" aria-controls="messages" role="tab" data-toggle="tab"><h4>Combos</h4></a></li>
			        <li role="presentation" class="sobre-elemento"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab"><h4>Settings</h4></a></li>
			      </ul>
			
			      <!-- Tab panes -->
			      <div class="tab-content">
			      <div role="tabpanel" class="tab-pane active" id="Eventos">
			        <div class="row clearfix">
			          <h2 class="text-center tittle">EVENTOS</h2>
			          <div class="col-md-12 table-bordered border-radius-15">
			              <h3 class="tittle">TOP THEN</h3>
			              <div class="row clearfix">
			              	<div class="col-md-12">
			              	<c:forEach items="${pageDataDTOList.eventDTOList}" var="eventDTO">
								<div class="col-md-4">
									<div class="thumbnail border-radius-15" style="height: 415px">
										<img class="border-radius-15" alt="300x200" style="height: 195px" src=<c:out value="${eventDTO.photo}"/>>
										<div class="caption">
											<h3 class="text-center sub-tittle">
												<c:out value="${eventDTO.tittle}"/>
											</h3 class="text-center">
											<p class="text-center">
												<c:out value="${eventDTO.description}"/>
											</p>
											<p>
											<a id="modal-225779" href="#modal<c:out value="${eventDTO.id}"/>" role="button" class="btn btn-primary btn-block" style="bottom: 0" data-toggle="modal">Ver Información</a>
											</p>
										</div>
									</div>
								</div>				
								<div class="modal fade" id="modal<c:out value="${eventDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="col-md-offset-3 col-md-6 border-radius-15">
										<div class="modal-content back-ground">
											<div class="modal-header">
												 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
												<h4 class="modal-title" id="myModalLabel">
													<h3 class=" text-center tittle"><c:out value="${eventDTO.tittle}"/></h3>
												</h4>
											</div>
											<div class="modal-body">
												<div class="thumbnail border-radius-15">
													<img class="border-radius-15" style="height:340px" alt="300x200" src=<c:out value="${eventDTO.photo}"/>>
													<div class="caption text-center">
														<p class="sub-tittle">
															<c:out value="${eventDTO.completDescription}"/>
														</p>
														<div class="row">
															<div class="col-md-12">
																<div class="col-md-6 text-left">
																	<h4>Lugar: <span class="modal-content"><c:out value="${eventDTO.placeTittle}"/></span></h4>
																</div>
																<div class="col-md-6 text-right">
																	<h4>Fecha: <span class="modal-content"><c:out value="${eventDTO.fecha}"/></span></h4>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												 <button type="button" class="btn btn-default sub-tittle btn-lg" data-dismiss="modal">Cerrar</button>
											</div>
										</div>
									</div>
								</div>	
							</c:forEach>
			              	</div>
			              </div>
			          </div>
			        </div>		  
			      </div>
			      <div role="tabpanel" class="tab-pane" id="Lugares">
			      	<div class="row clearfix">
			          <h2 class="text-center tittle">LUGARES</h2>
			          <div class="col-md-12 table-bordered border-radius-15">
			              <h3 class="tittle">TOP THEN</h3>
			              <div class="row clearfix">
			              	<div class="col-md-12">
			              	<c:forEach items="${pageDataDTOList.placeDTOList}" var="placeDTO">
								<div class="col-md-4">
									<div class="thumbnail border-radius-15">
										<img class="border-radius-15" alt="300x200" style="height: 195px" src=<c:out value="${placeDTO.photo}"/>>
										<div class="caption">
											<h3 class="text-center sub-tittle">
												<c:out value="${placeDTO.tittle}"/>
											</h3>
											<p class="text-center">
												<c:out value="${placeDTO.description}"/>
											</p>
											<p>
											<a href="#modal-place<c:out value="${placeDTO.id}"/>" role="button" class="btn btn-primary btn-block" data-toggle="modal">Ver Información</a>											
											</p>
										</div>
									</div>
								</div>				
								<div class="modal fade" id="modal-place<c:out value="${placeDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="col-md-offset-3 col-md-6 border-radius-15">
										<div class="modal-content back-ground">
											<div class="modal-header">
												 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
												<h4 class="modal-title" id="myModalLabel">
													<h3 class=" text-center tittle"><c:out value="${placeDTO.tittle}"/></h3>
												</h4>
											</div>
											<div class="modal-body">
												<div class="thumbnail border-radius-15">
													<img class="border-radius-15" style="height:340px" alt="300x200" src=<c:out value="${placeDTO.photo}"/>>
													<div class="caption text-center">
														<p class="sub-tittle">
															<c:out value="${placeDTO.completDescription}"/>
														</p>
														<div class="row">
															<div class="col-md-12">
																<div class="col-md-12 text-center">
																	<h4>Dirección: <span class="modal-content"><c:out value="${placeDTO.direction}"/></span> </h4>
																	<p class="modal-content"><span class="text-center">CONTACTO</span><br>
																	<span>${placeDTO.contact.firstName} ${placeDTO.contact.lastName}</span><br>
																	<span>Facebook: ${placeDTO.contact.facebookId}</span><br>
																	<span>Twitter: ${placeDTO.contact.twiterId}</span><br>
																	<span>Mail: ${placeDTO.contact.email}</span><br>
																	<span>Dirección: ${placeDTO.contact.address}</span><br>
																	<span>Célular: ${placeDTO.contact.mobile}</span><br>
																	<span>Télefono: ${placeDTO.contact.telephone}</span></p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												 <button type="button" class="btn btn-default sub-tittle btn-lg" data-dismiss="modal">Cerrar</button>
											</div>
										</div>
									</div>
								</div>	
							</c:forEach>
			              	</div>
			              </div>
			          </div>
			        </div>
			      </div>
			      <div role="tabpanel" class="tab-pane" id="Combos">
			      	<div class="row clearfix">
			          <h2 class="text-center tittle">COMBOS</h2>
			          <div class="col-md-12 table-bordered border-radius-15">
			          	<div role="tabpanel col-md-12">
					      <ul class="nav nav-tabs navbar navbar-default" role="tablist">
					        <li role="presentation" class="active sobre-elemento"><a href="#Comida" aria-controls="home" role="tab" data-toggle="tab"><h4>Comida</h4></a></li>
					        <li role="presentation" class="sobre-elemento"><a href="#Licores" aria-controls="profile" role="tab" data-toggle="tab"><h4>Licores</h4></a></li>
					      </ul>
					      <div class="tab-content">
						      <div role="tabpanel" class="tab-pane active" id="Comida">
							      <div class="row clearfix">
					              	<div class="col-md-12">
					              	<c:forEach items="${pageDataDTOList.comboDTOList}" var="comboDTO">
				              	 	<c:if test="${comboDTO.type == 'c'}">
										<div class="col-md-4">
											<div class="thumbnail border-radius-15" style="height: 415px">
												<img class="border-radius-15" alt="300x200" style="height: 195px" src=<c:out value="${comboDTO.photo}"/>>
												<div class="caption">
													<h3 class="text-center sub-tittle">
														<c:out value="${comboDTO.name}"/>
													</h3 class="text-center">
													<p class="text-center">
														<c:out value="${comboDTO.description}"/>
													</p>
													<p class="text-center">
														Precio: $ <c:out value="${comboDTO.price}"/>
													</p>
													<p>
													<a id="modal-225779" href="#modalCombo<c:out value="${comboDTO.id}"/>" role="button" class="btn btn-primary btn-block" style="bottom: 0" data-toggle="modal">Ver Información</a>
													</p>
												</div>
											</div>
										</div>				
										<div class="modal fade" id="modalCombo<c:out value="${comboDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="col-md-offset-3 col-md-6 border-radius-15">
												<div class="modal-content back-ground">
													<div class="modal-header">
														 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
														<h4 class="modal-title" id="myModalLabel">
															<h3 class=" text-center tittle"><c:out value="${comboDTO.name}"/></h3>
														</h4>
													</div>
													<div class="modal-body">
														<h4>Productos del combo</h4>
														<table class="table table-bordered">
															<th>NOMBRE</th>
															<th>DESCRIPCIÓN</th>
															<c:forEach items="${comboDTO.productDTOList}" var="productDTO">
																<tr>
																	<td><c:out value="${productDTO.name}"></c:out></td>
																	<td><c:out value="${productDTO.description}"></c:out></td>
																</tr>
															</c:forEach>
														</table>
													</div>
													<div class="modal-footer">
														 <button type="button" class="btn btn-default sub-tittle btn-lg" data-dismiss="modal">Cerrar</button>
													</div>
												</div>
											</div>
										</div>	
									</c:if>
									</c:forEach>
					              	</div>
							      </div>
						      </div>
						      <div role="tabpanel" class="tab-pane" id="Licores">
							      <div class="row clearfix">
					              	<div class="col-md-12">
					              	<c:forEach items="${pageDataDTOList.comboDTOList}" var="comboDTO">
				              	 	<c:if test="${comboDTO.type == 'l'}">
										<div class="col-md-4">
											<div class="thumbnail border-radius-15" style="height: 415px">
												<img class="border-radius-15" alt="300x200" style="height: 195px" src=<c:out value="${comboDTO.photo}"/>>
												<div class="caption">
													<h3 class="text-center sub-tittle">
														<c:out value="${comboDTO.name}"/>
													</h3 class="text-center">
													<p class="text-center">
														<c:out value="${comboDTO.description}"/>
													</p>
													<p class="text-center">
														Precio: $ <c:out value="${comboDTO.price}"/>
													</p>
													<p>
													<a id="modal-225779" href="#modalCombo<c:out value="${comboDTO.id}"/>" role="button" class="btn btn-primary btn-block" style="bottom: 0" data-toggle="modal">Ver Información</a>
													</p>
												</div>
											</div>
										</div>				
										<div class="modal fade" id="modalCombo<c:out value="${comboDTO.id}"/>" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="col-md-offset-3 col-md-6 border-radius-15">
												<div class="modal-content back-ground">
													<div class="modal-header">
														 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
														<h4 class="modal-title" id="myModalLabel">
															<h3 class=" text-center tittle"><c:out value="${comboDTO.name}"/></h3>
														</h4>
													</div>
													<div class="modal-body">
														<h4>Productos del combo</h4>
														<table class="table table-bordered">
															<th>NOMBRE</th>
															<th>DESCRIPCIÓN</th>
															<c:forEach items="${comboDTO.productDTOList}" var="productDTO">
																<tr>
																	<td><c:out value="${productDTO.name}"></c:out></td>
																	<td><c:out value="${productDTO.description}"></c:out></td>
																</tr>
															</c:forEach>
														</table>
													</div>
													<div class="modal-footer">
														 <button type="button" class="btn btn-default sub-tittle btn-lg" data-dismiss="modal">Cerrar</button>
													</div>
												</div>
											</div>
										</div>	
									</c:if>
									</c:forEach>
					              	</div>
							      </div>
						      </div>
					      </div>
			          	</div>
			          </div>
			        </div>
			        </div>
			      <div role="tabpanel" class="tab-pane" id="settings">...rty</div>
		      </div>
	      </div>
		</div>
	</div>
</body>
</html>
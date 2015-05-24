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
	<div class="container">
      <div role="tabpanel">

      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#Eventos" aria-controls="home" role="tab" data-toggle="tab"><h4>Eventos</h4></a></li>
        <li role="presentation"><a href="#Lugares" aria-controls="profile" role="tab" data-toggle="tab"><h4>Lugares</h4></a></li>
        <li role="presentation"><a href="#Combos" aria-controls="messages" role="tab" data-toggle="tab"><h4>Combos</h4></a></li>
        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab"><h4>Settings</h4></a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="Eventos">
        <div class="row clearfix">
          <h2 class="text-center">EVENTOS</h2>
          <div class="col-md-12 table-bordered">
              <h3>TOP THEN</h3>
          </div>
        </div>
      </div>
      <div role="tabpanel" class="tab-pane" id="Lugares">...zxc</div>
      <div role="tabpanel" class="tab-pane" id="Combos">...qwe</div>
      <div role="tabpanel" class="tab-pane" id="settings">...rty</div>
      </div>

      </div>
	</div>
</body>
</html>
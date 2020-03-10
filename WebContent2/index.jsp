<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Projeto LPII - Projeto Modelo</title>

<link href="css/style.default.css" rel="stylesheet">
<link href="css/morris.css" rel="stylesheet">
<link href="css/select2.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

</head>
<body>
	<jsp:include page="cabecalho.jsp">
		<jsp:param name="logado" value="true" />
	</jsp:include>

	<section>
		<div class="mainwrapper">
			<jsp:include page="./menu.jsp" />
			<div class="mainpanel">
				<jsp:include page="./pageheader.jsp">
					<jsp:param name="bigIcon" value="fa fa-home" />
					<jsp:param name="smallIcon" value="glyphicon glyphicon-home" />
					<jsp:param name="pageLocation" value="Dashboard" />
					<jsp:param name="pageName" value="Dashboard" />
				</jsp:include>
				<jsp:include page="./contentpainel.jsp"></jsp:include>
			</div>
		</div><!-- mainwrapper --> 
	</section>

        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/pace.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/jquery.cookies.js"></script>
        

        <script src="js/flot/jquery.flot.min.js"></script>
        <script src="js/flot/jquery.flot.resize.min.js"></script>
        <script src="js/flot/jquery.flot.spline.min.js"></script>
        <script src="js/jquery.sparkline.min.js"></script>
        <script src="js/morris.min.js"></script>
        <script src="js/raphael-2.1.0.min.js"></script>
        <script src="js/bootstrap-wizard.min.js"></script>
        <script src="js/select2.min.js"></script>

  		<!--[if lt IE 8]>
  			<script src="js/flot/excanvas.min.js"></script>
    	<![endif]-->


        <script src="js/custom.js"></script>
        <script src="js/dashboard.js"></script>

</body>
</html>
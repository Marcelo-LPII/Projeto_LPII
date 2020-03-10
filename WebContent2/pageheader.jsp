<!--
Dashboard 
  small - glyphicon glyphicon-home
  big   - fa fa-home
  location - Dashboard
  pageName - Dashboard
  
  
  fa-list-alt
  -->
<%
String bigIcon   = request.getParameter("bigIcon");
String smallIcon = request.getParameter("smallIcon");
String location  = request.getParameter("pageLocation");
String pageName  = request.getParameter("pageName");
%>

<div class="pageheader">
	<div class="media">
		<div class="pageicon pull-left">
			<i class="<%=bigIcon%>"></i>
		</div>
		<div class="media-body">
			<ul class="breadcrumb">
				<li><a href="#"><i class="<%=smallIcon %>"></i></a></li>
				<li><%=location%></li>
			</ul>
			<h4><%=pageName%></h4>
		</div>
	</div> 	<!-- media -->
</div> <!-- pageheader -->
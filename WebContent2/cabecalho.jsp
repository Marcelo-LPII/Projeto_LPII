<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<header>
	<div class="headerwrapper">
		<div class="header-left">
			
			<%
			String refLogado = "./index.jsp";
			boolean logado = new Boolean( request.getParameter("logado") );
			String labelButton = "Login";
			String iconLabelButton =  "fa fa-sign-in"; 
			String action      = "./signin.jsp";
			if ( logado )
			{
				refLogado = "indexLogado.jsp";
				labelButton = "Logout";
				iconLabelButton =  "fa fa-sign-out";
				action      = "./index.jsp";
			}
			%>
			<a href="<%=refLogado%>" class="logo"> <img src="images/logo.png"
				alt="" />
			</a>
			<%
			if ( logado )
			{
				
			%>
	        	<div class="pull-right">
	            	<a href="#" class="menu-collapse">
	                	<i class="fa fa-bars"></i>
	                </a>
	            </div>
			<%
			}
			%>
		</div>
		<!-- header-left -->
	
		<div class="header-right">
			<div class="pull-right">
				<div class="btn-group btn-group-list btn-group-notification">
						<form class="form" method="post"
							action="<%=action%>"> <!-- Colocar aqui a chamada para o servlet -->
							<button class="btn btn-primary btn-rounded">
								<i class="<%=iconLabelButton%>"></i> <span class="badge"><%=labelButton%></span>
							</button>
						</form>
						
				</div>
				<!-- btn-group -->
			</div>
			<!-- pull-right -->
		</div>
		<!-- header-right -->
	</div><!-- headerwrapper -->
</header>
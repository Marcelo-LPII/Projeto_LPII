<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:useBean id="cliente" class=ifba.exemplo.model.ClienteDAO/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Projeto LPII - Exemplo</title>

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
                    <jsp:param name="bigIcon" value="fa fa-wrench" />
                    <jsp:param name="smallIcon" value="glyphicon glyphicon-wrench" />
                    <jsp:param name="pageLocation"
                               value="Manutenção / Listar Usuários" />
                    <jsp:param name="pageName" value="Listar Cidade" />
                </jsp:include>
                <div class="contentpanel">
                    <div class="table-responsive">      
                        <!-- <button class="btn btn-default btn-bordered btn-xs">Novo</button> -->
                        <a href="./ClienteController?acao=inserir" data-toggle="tooltip" title="Novo" class="tooltips">
                            <i class="fa fa-plus"></i> <span>Novo</span>
                        </a>
                        <table class="table mb30 table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>RG</th>
                                    <th>Endereco</th>
                                    <th>Telefone</th>
                                    <th>Email</th>
                                    <th>Senha</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="clie" items="${cliente.consultar}">
                                    <tr>
                                        <td class="table-action">
                                            <a href="./CidadeController?acao=editar&ID=0" data-toggle="tooltip" title="Editar" class="tooltips"> <i class="fa fa-pencil"></i> </a> 
                                            <a href="./CidadeController?acao=deletar&ID=0" data-toggle="tooltip" title="Deletar" class="delete-row tooltips"> <i class="fa fa-trash-o"></i></a>
                                        </td>
                                        <th>${clie.nm_cliente}</th>
                                        <th>${clie.cpf_cliente}</th>
                                        <th>${clie.rg_cliente}</th>
                                        <th>${clie.endereco_cliente}</th>
                                        <th>${clie.telefone_cliente}</th>
                                        <th>${clie.email_cliente}</th>
                                        <th>${clie.senha_cliente}</th>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- table-responsive -->
                </div>
            </div>
        </div>
        <!-- mainwrapper --> </section>

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
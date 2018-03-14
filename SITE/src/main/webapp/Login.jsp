<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login | Lojinha</title>

        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
        <script src="js/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-xlarge.css" />
        </noscript>

    </head>

    <body>

        <header id="header" class="skel-layers-fixed">
            <h1>Lojinha</h1>
            <nav id="nav">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="CadastroUser.jsp">Cadastrar</a></li>
                </ul>
            </nav>
        </header>

        <form method="post" action="Login">
            <!-- Banner -->
            <section id="banner">
                <div class="inner">
                    <h2>Login</h2>
                    <%
                        String cadastro = request.getParameter("cadastro");
                        if ("sucesso".equals(cadastro)) {
                            %>
                            <p style="color: green"> CADASTRO REALIZADO COM SUCESSO</p>
                            <%
                        }
                    %>
                    <%
                        String msg = request.getParameter("cadastro");
                        if ("sucesso".equals(cadastro)) {
                            %>
                            <p style="color: crimson"> Coorrigie aqui charles!</p>
                            <%
                        }
                    %>
                    <p>Digite seus dados e entre na sua conta da Lojinha</p>

                    <table>
                        <tr>
                            <td>
                                Email:
                            </td>
                            <td>
                                <input type="text" name="email" value="" />
                            </td>
                        </tr>
                        <tr>
                            <td>Senha:
                            </td>
                            <td>
                                <input type="password" name="senha" value="" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <input type="submit" value="Enviar" name="Enviar" />
                </div>
            </section>
        </form>
    </body>
</html>

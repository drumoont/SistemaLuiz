<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perfil do usuário | Lojinha</title>

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
        <form method="post" action="Perfil">
            <!-- Header -->
            <header id="header" class="skel-layers-fixed">
                <h1>Lojinha</h1>
                <nav id="nav">
                    <ul>
                        <li><a href="Perfil.jsp">Perfil</a></li>
                        <li><a href="Home.jsp" class="button special">Sair</a></li>
                    </ul>
                </nav>
            </header>

           <div class="row">

                <div class="4u">
                    <section>
                        <p> </p>
                    </section>
                </div>

                <!-- Two -->
                <section id="two" class="wrapper style2">
                    <header class="major">
                        <h2>Perfil</h2>
                        <h1></h1>
                        <p>Altere a sua conta</p>
                        <p> </p>
                        <br /> <br /> <br />
                        <div class="row">
                            <div class="6u">
                                <section class="special">
                                    <ul class="actions">
                                        <li><a href="PagExcluir.jsp" class="button alt">Excluir Conta</a></li>
                                    </ul>
                                </section>
                            </div>
                            <div class="6u">
                                <section class="special">
                                    <ul class="actions">
                                        <li><a href="PagEmAnd.jsp" class="button alt">Alterar dados</a></li>
                                    </ul>
                                </section>
                            </div>
                        </div>
                    </header>
                </section>
            </div> 
    </body>
</html>

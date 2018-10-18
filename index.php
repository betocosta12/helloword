<?php include './admin/connect.php'; 

    $query = ('SELECT * FROM confsite ');
    
    $result = mysql_query($query, $con);
    
    $row = mysql_fetch_array($result);

    $limite_pagina = 6;
    $limite_de  = empty($_REQUEST['pag']) ? 0 : (($_REQUEST['pag']*$limite_pagina)-$limite_pagina);
    $limite_ate = empty($_REQUEST['pag']) ? $limite_pagina : ($_REQUEST['pag']*$limite_pagina);

    //echo $limite_de . "<br/>";
    //echo $limite_ate . "<br/>";die;

    $queryCount = ('SELECT COUNT(id) AS total FROM portfolio');

    $query1 = ('SELECT * FROM portfolio ORDER BY id DESC LIMIT ' . $limite_de . ', ' . $limite_ate );
    
    $resultTotal                = mysql_query($queryCount, $con);
    $resultTotal_query          = mysql_fetch_assoc($resultTotal);
    $portifolio_total           = $resultTotal_query['total'];
    $portifolio_total_paginas   = ceil($portifolio_total / $limite_pagina);

    //print_r($portifolio_total_paginas);die;
    
    $result1 = mysql_query($query1, $con); 
    
    $portfolio = array();
    while($portfolio = mysql_fetch_array($result1)){
        $portfolios[] = $portfolio;
    }

    $query2 = ('SELECT * FROM sobre ORDER BY id DESC');
    
    $result2 = mysql_query($query2, $con);

    //******************************************************************
    //  SLIDE
    //******************************************************************

    $sql = ('SELECT * FROM slides ORDER BY id DESC');
    $sql_slides = mysql_query($sql, $con);    

    $slides = array();
    while($slide = mysql_fetch_array($sql_slides)){
        $slides[] = $slide;
    }

    /**
    echo "<pre>";
    print_r($slides);
    echo "</pre>";
    **/
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $row['co_nome']; ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="asset/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    
    
    <!-- Animate CSS -->
    <link href="css/animate.css" rel="stylesheet" >
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" >
    <link rel="stylesheet" href="css/owl.theme.css" >
    <link rel="stylesheet" href="css/owl.transitions.css" >

    <!-- Custom CSS -->
    <link href="css/modificado.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/color/green.css">
    
    
    
    <!-- Colors CSS -->
    <!--<link rel="stylesheet" type="text/css" href="css/color/green.css" title="green">
    <link rel="stylesheet" type="text/css" href="css/color/light-red.css" title="light-red">
    <link rel="stylesheet" type="text/css" href="css/color/blue.css" title="blue">
    <link rel="stylesheet" type="text/css" href="css/color/light-blue.css" title="light-blue">
    <link rel="stylesheet" type="text/css" href="css/color/yellow.css" title="yellow">
    <link rel="stylesheet" type="text/css" href="css/color/light-green.css" title="light-green">-->

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    
    
    <!-- Modernizer js -->
    <script src="js/modernizr.custom.js"></script>

    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="index">
   
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Caracol backpacks</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#portfolio"><?php echo $row['co_link1']; ?></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about-us"><?php echo $row['co_link2']; ?></a>
                    </li>
                   
                    <li>
                        <a class="page-scroll" href="#contact"><?php echo $row['co_link3']; ?></a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    
    
    
    <!-- Start Home Page Slider -->
    <section id="page-top">
        <!-- Carousel -->
        <div id="main-slide" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <?php  
                    foreach($slides as $key => $slide):
                        $active = $key == 0 ? 'active' : '';
                ?>
                    <li data-target="#main-slide" data-slide-to="0" class="<?php echo $active ?>"></li>
                <?php
                endforeach;
                ?>
            </ol>
            <!--/ Indicators end-->

            <!-- Carousel inner -->
            <div class="carousel-inner">

                <?php  
                    foreach($slides as $key => $slide):
                        $active = $key == 0 ? 'active' : '';
                ?>
                    <div class="item <?php echo $active ?>">
                        <img class="img-responsive" src="images/<?php echo $slide['img' ]?>" alt="slider">
                        <div class="slider-content">
                            <div class="col-md-12 text-center">
                                <h1 class="animated3">
                                    <span><?php echo $slide['titulo'] ?></span>
                                </h1>
                                <p class="animated2"><?php echo $slide['desc_img'] ?></p>   
                                
                            </div>
                        </div>
                    </div>
                <?php
                endforeach;
                ?>
                
                <!--/ Carousel item end -->
            </div>
            <!-- Carousel inner end-->

            <!-- Controls -->
            <a class="left carousel-control" href="#main-slide" data-slide="prev">
                <span><i class="fa fa-angle-left"></i></span>
            </a>
            <a class="right carousel-control" href="#main-slide" data-slide="next">
                <span><i class="fa fa-angle-right"></i></span>
            </a>
        </div>
        <!-- /carousel -->
    </section>
    <!-- End Home Page Slider -->

    
    
    <!-- Start Feature Section -->
        <section id="feature" class="feature-section">
            <div class="container">
                <div class="row">   
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
        <!-- End Feature Section -->

    <!-- Start Portfolio Section -->
        <section id="portfolio" class="portfolio-section-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="welcome-section text-center">
                            <h3>PORTFÓLIO</h3>
                            <div class="border"></div>
                            <div></div>
                            
                        </div>                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        
                        <!-- Start Portfolio items -->
                        <ul id="portfolio-list">
                            <?php

                            foreach ($portfolios as $portfolio) {
                                echo '
                            <li>
                                <div class="portfolio-item">
                                    <img src="'.$portfolio['img' ].'" class="img-responsive" alt="'.$portfolio['titulo'].'"; />
                                    <div class="portfolio-caption">
                                        <h4>'.$portfolio['titulo'].'</h4>
                                        <a href="#portfolio-modal" data-toggle="modal" class="link-1"><i class="fa fa-magic"></i></a>
                                        <!--<a href="#'.$portfolio['link'].'" class="link-2"><i class="fa fa-link"></i></a>-->
                                    </div>
                                </div>
                            </li>

                                ';
                            }
                            ?>          
                        </ul>
                        <!-- End Portfolio items -->
                    </div>



                     <div class="text-center">
                    <?php
                 echo '<ul class="pagination" position:absolute;>';
                 for($a=1; $a<= $portifolio_total_paginas; $a++){
                   echo '<li><a href="?pag=' . $a . '">' . $a . '</a><li>';
                }
                  echo '</ul>';
                  ?>
                </div>
            </div>
        </section>
        <!-- End Portfolio Section -->
    
    <!-- Start Portfolio Modal Section -->
    <?php 
        foreach ($portfolios as $portfolio) {
            echo '
        <div class="section-modal modal fade" id="portfolio-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>'.$portfolio['titulo'].'</h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-6">
                            <img src="'.$portfolio['img'].'" class="img-responsive" alt="..">
                        </div>
                        <div class="col-md-6">
                            <p>"'.$portfolio['desc_img'].'"</p>
                        </div>
                        
                    </div><!-- /.row -->
                </div>                
            </div>
        </div>';
        }
    ?>
        <!-- End Portfolio Modal Section -->
    
    
    <!-- Start About Us Section -->
     <?php if($sobre = mysql_fetch_array($result2)){?>
    <section id="about-us" class="about-us-section-1">
        <div class="container">
            
            <div class="row">
                <div class="welcome-section text-center">
                    <h3><?php echo $sobre['titulo']; ?></h3>
                    <div class="border"></div>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                
                <div class="col-lg-4 col-lg-offset-2">
                    <p><?php echo $sobre['texto1']; ?></p>
                </div>
                <div class="col-lg-4 ">
                    <img src="images/perfil.jpg" class="img-circle" width="300" height="300" alt="..">
                </div>
                
                <!--<div class="col-lg-4">
                     <img src="images/perfil.jpg" class="img-circle" width="400" height="400" alt="..">
                </div>-->
                <!-- /.row -->            
            </div>
        </div>
        <!-- /.container -->
    </section>
    <?php }?>
    <!-- End About Us Section -->

 
    <!-- Start Pricing Table Section -->
    <div id="pricing" class="pricing-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h3></h3>
                            
                        </div>
                    </div>
                </div>
            </div>
                    
            <div class="row">
                        
                <div class="pricing">
                        
                        
                        
                    </div>
						
						
            </div>
        </div>
    </div>
    <!-- End Pricing Table Section -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h3>CONTATO</h3>
                        <div class="border"></div>
                        <p class="white-text">Duis aute irure dolor in reprehenderit in voluptate</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" action="mail/contact_me.php" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Seu Nome *" id="name" required data-validation-required-message="Seu Nome.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Seu E-mail *" id="email" required data-validation-required-message="Seu E-mail.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Seu Telefone*" id="phone" required data-validation-required-message="Seu Telefone.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Entre com sua Mensagem *" id="message" required data-validation-required-message="Entre com sua Mensagem."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-primary">Enviar Mensagem</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
          
        </div>
        <footer class="style-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <span class="copyright">Copyright &copy;2018</span>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-social text-center">
                            <ul>
                                <!--<li><a href="#"><i class="fa fa-twitter"></i></a></li>-->
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <!--<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-whatsapp"></i></a></li>-->
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-link">
                            <ul class="pull-right">
                                <li><img class="h-size2" src="images/icons/paypal.png" alt="IMG-PAYPAL"></li>
                                <li><img class="h-size2" src="images/icons/visa.png" alt="IMG-VISA"></li>
                                <li><img class="h-size2" src="images/icons/mastercard.png" alt="IMG-MASTERCARD"</li>
                                <li><img class="h-size2" src="images/icons/express.png" alt="IMG-EXPRESS"></li>
                                <li><img class="h-size2" src="images/icons/discover.png" alt="IMG-DISCOVER"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>


    <div id="loader">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>

    

    <!-- jQuery Version 2.1.1 -->
    <script src="js/jquery-2.1.1.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="asset/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/count-to.js"></script>
    <script src="js/jquery.appear.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>
    <script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.fitvids.js"></script>
	<script src="js/styleswitcher.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/script.js"></script>

</body>

</html>

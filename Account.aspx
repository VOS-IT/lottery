<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
		<meta http-equiv="x-ua-compatible" content="ie=edge"/>
		<title>Account | Genting Vegas </title>
		<meta name="description" content=""/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>

		<!-- favicon -->		
		<link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico"/>

		<!-- all css here -->

		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<!-- owl.carousel css -->
		<link rel="stylesheet" href="css/owl.carousel.css"/>
		<link rel="stylesheet" href="css/owl.transitions.css"/>
       <!-- Animate css -->
        <link rel="stylesheet" href="css/animate.css"/>
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css"/>
		<!-- font-awesome css -->
		<link rel="stylesheet" href="css/font-awesome.min.css"/>
		<link rel="stylesheet" href="css/themify-icons.css"/>
		<!-- magnific css -->
        <link rel="stylesheet" href="css/magnific.min.css"/>
		<!-- style css -->
		<link rel="stylesheet" href="style.css"/>
		<!-- responsive css -->
		<link rel="stylesheet" href="css/responsive.css"/>

		<!-- modernizr css -->
		<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
       <header class="header-one">
           
            <!-- Start top bar -->
            <%--<div class="topbar-area">
                <div class="container">
                    <div class="row">
                        <div class=" col-md-8 col-sm-8 col-xs-12">
                            <div class="topbar-left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-envelope"></i> info@playdo4.com</a></li>
                                    <%--<li><a href="#"><i class="fa fa-clock-o"></i> Live support</a></li>-
                                </ul>  
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="topbar-right">
								<ul>
                                    <%--<li><a href="#"><img src="img/icon/w1.png" alt="">English</a>
                                       <ul>
                                           <li><a href="#"><img src="img/icon/w2.png" alt="">Deutsch</a>
                                           <li><a href="#"><img src="img/icon/w3.png" alt="">Español</a>
                                           <li><a href="#"><img src="img/icon/w4.png" alt="">Français</a>
                                           <li><a href="#"><img src="img/icon/w5.png" alt="">العربية</a>
                                       </ul>
                                    </li>
                                    <li><a id="log" runat="server" href="#" onclick="BtnLogin()"><img runat="server" src="img/icon/login.png" alt=""/>Login</a> </li>
                                </ul>
							</div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- End top bar -->
            <!-- header-area start -->
            <div id="sticker" class="header-area header-area-2 hidden-xs">
                <div class="container">
                    <div class="row">
                        <!-- logo start -->
                        <div class="col-md-3 col-sm-3">
                            <div class="logo">
                                <!-- Brand -->
                                <a class="navbar-brand " href="Home.aspx">
                                    <img src="img/logo/logo2.png" alt=""/>
                                </a>
                            </div>
                            <!-- logo end -->
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="header-right-link">
                                <!-- search option end -->
                                   <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="s-menu" OnClick="btnLogin_Click"  />
								<%--<a id="Log" runat="server" class="s-menu" href="Login.aspx">Join now / Login</a>--%>
                               
                            </div>
                           <%-- <div class="header-right-link">
                                <!-- search option end -->
                                <asp:Button ID="BtnLogin" runat="server"  Text="Login"  CssClass="slide-btn login-btn" />
								<%--<a id="A1" runat="server" class="s-menu" href="Login.aspx">Join now / Login</a>-
                                
                            </div>--%>
                            <!-- mainmenu start -->
                            <nav class="navbar navbar-default">
                                <div class="collapse navbar-collapse" id="navbar-example">
                                    <div class="main-menu">
                                        <ul class="nav navbar-nav navbar-right">
                                            <li><a class="pagess" href="Home.aspx">Home</a>
                                                <%--<ul class="sub-menu">
                                                    <li><a href="index.html">Home 01</a></li>
                                                    <li><a href="index-2.html">Home 02</a></li>
                                                    <li><a href="index-3.html">Home 03</a></li>
                                                </ul>--%>
                                            </li>
                                            <%--<li><a class="pagess" href="play.html">Play</a></li>
                                            <li><a class="pagess" href="#">Games</a>
                                                <ul class="sub-menu">
                                                    <li><a href="games.html">All Games</a></li>
                                                    <li><a href="games-details.html">Games Details</a></li>
                                                </ul>
                                            </li>--%>
                                            <li><a class="pagess" href="lottery.aspx">Lottery</a></li>
                                           <%-- <li><a class="pagess" href="#">Pages</a>
                                                <ul class="sub-menu">
                                                   <li><a href="about.html">About</a></li>
                                                    <li><a href="team.html">team</a></li>
                                                    <li><a href="faq.html">FAQ</a></li>
                                                    <li><a href="pricing.html">Pricing</a></li>
                                                    <li><a href="login.html">Login</a></li>
                                                    <li><a href="signup.html">Signup</a></li>
                                                    <li><a href="error.html">Error</a></li>
                                                    <li><a href="terms.html">terms & Conditions</a></li>
                                                </ul>
                                            </li>--%>
                                           <%-- <li><a class="pagess" href="#">Blog</a>
                                                <ul class="sub-menu">
                                                    <li><a href="blog.html">Blog grid</a></li>
                                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                </ul>
                                            </li>--%>
                                           <%-- <li><a href="contact.html">contacts</a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!-- mainmenu end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- header-area end -->
            <!-- mobile-menu-area start -->
            <div class="mobile-menu-area hidden-lg hidden-md hidden-sm">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mobile-menu">
                                <div class="logo">
                                    <a href="index.html"><img src="img/logo/logo2.png" alt="" /></a>
                                </div>
                                <nav id="dropdown">
                                    <ul>
                                        <li><a class="pagess" href="index.html">Home</a>
                                            <ul class="sub-menu">
                                                <li><a href="index.html">Home 01</a></li>
                                                <li><a href="index-2.html">Home 02</a></li>
                                                <li><a href="index-3.html">Home 03</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="play.html">Play</a></li>
                                        <li><a class="pagess" href="#">Games</a>
                                            <ul class="sub-menu">
                                                <li><a href="games.html">All Games</a></li>
                                                <li><a href="games-details.html">Games Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="lottery.html">Lottery</a></li>
                                        <li><a class="pagess" href="#">Pages</a>
                                            <ul class="sub-menu">
                                               <li><a href="about.html">About</a></li>
                                                <li><a href="team.html">team</a></li>
                                                <li><a href="faq.html">FAQ</a></li>
                                                <li><a href="pricing.html">Pricing</a></li>
                                                <li><a href="login.html">Login</a></li>
                                                <li><a href="signup.html">Signup</a></li>
                                                <li><a href="error.html">Error</a></li>
                                                <li><a href="terms.html">terms & Conditions</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="#">Blog</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">Blog grid</a></li>
                                                <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">contacts</a></li>
                                    </ul>
                                </nav>
                            </div>					
                        </div>
                    </div>
                </div>
            </div>
            <!-- mobile-menu-area end -->	
             
        </header>
        <!-- header end -->
        <!-- Start Bottom Header -->
        <div class="page-area">
            <div class="breadcumb-overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcrumb">
                            <div class="section-headline">
                                <%--<h2>Lottery</h2>--%>
                            </div>
                            <%--<ul>
                                <li class="home-bread">Home</li>
                                <li>Lottery</li>
                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Header -->
        <!-- Start Chips area -->
        <div class="ticket-area bg-color-2 area-padding-2">
            <div class="container">
                 <div class="row">
                    <div class="ticket-content">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-ticket">
                                <span id="rate" runat="server" class="ticket-rate">200</span>
                                <div class="ticket-image">
                                    <span class="win-price">Win Reward</span>
                                    <span id="price" runat="server" class="win-money">5000k</span>
                                    <img src="img/about/chips2.png" alt=""/>
                                </div>
                                <div class="ticket-text">
                                    <%--<h4 class="ticket-name">Las Vegas Lottery</h4>--%>
                                    <h3 id="count" runat="server" class="ticket-name"></h3>
                                    <asp:Button ID="BtnBuyTicket" runat="server" Text="Buy" CssClass="ticket-btn"  />
                                    <%--<a class="ticket-btn" href="#">Buy Now</a>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Achivement area -->
        <!-- Start Chips area -->
      
       
       

		<!-- jquery latest version -->
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
		<!-- bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- magnific js -->
        <script src="js/magnific.min.js"></script>
        <!-- wow js -->
        <script src="js/wow.min.js"></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		<!-- Form validator js -->
		<script src="js/form-validator.min.js"></script>
		<!-- plugins js -->
		<script src="js/plugins.js"></script>
		<!-- main js -->
		<script src="js/main.js"></script>
    </form>
</body>
</html>

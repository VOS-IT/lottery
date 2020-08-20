<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Slider Area -->
    <%-- <div class="intro-area intro-area-2">
            <div class="bg-wrapper">
                <img src="img/background/casino-table-in-close-up-view-4677402.jpg" alt="">                
            </div>
			<div class="intro-content">
				<div class="slider-content">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="slide-all-text">
								    <!-- layer 1 -->
                                    <div class="layer-1 wow fadeInUp" data-wow-delay="0.3s">
                                        <h2 class="title2">Playing online games<span class="color"> Win Reward </span></h2>
                                    </div>
                                    <!-- layer 2 -->
                                    <div class="layer-2 wow fadeInUp" data-wow-delay="0.5s">
                                        <p>We develop effective plans to move your customers behaviour. customer can be alwayes his profit.</p>
                                    </div>
                                    <!-- layer 3 -->
                                    <div class="layer-3 wow fadeInUp" data-wow-delay="0.7s">
                                        <a href="#" class="ready-btn" >Get Started</a>
                                    </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>--%>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/background/img3.png" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games<span class="color"> Win Reward </span></h2>
                    </div>--%>
            </div>
            <div class="item">
                <img src="img/background/img2.jpeg" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games1<span class="color"> Win Reward 1</span></h2>
                    </div>--%>
            </div>
            <div class="item">
                <img src="img/background/img1.jpg" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games2<span class="color"> Win Reward 1</span></h2>
                    </div>--%>
            </div>

        </div>

        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="icon-prev" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="icon-next" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- End Slider Area -->
    <!-- Start Achivement area -->
    <div class="achivement-area bg-color area-padding-2">
        <div class="container">
            <div class="row">
                <div class="achivement-content">
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive first-achive">
                            <div class="achive-image">
                                <img src="img/about/achive1.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span id="ActiveCount" runat="server" class="achive-number"></span>
                                <h6>Live online</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive second-achive">
                            <div class="achive-image">
                                <img src="img/about/achive2.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span id="userCount" runat="server" class="achive-number"></span>
                                <h6>Active Member</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive">
                            <div class="achive-image">
                                <img src="img/about/achive3.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span class="achive-number">2000K+</span>
                                <h6>Daily Reward</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Achivement area -->
    <!-- Start About Area -->
    <div class="about-area about-area-2 bg-color-2 fix area-padding-2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <!-- Start services -->
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon.png" alt="">
                        <div class="support-content">
                            <h4>Live online game</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon2.png" alt="">
                        <div class="support-content">
                            <h4>Instant Reward</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon3.png" alt="">
                        <div class="support-content">
                            <h4>Refferral bonus</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon4.png" alt="">
                        <div class="support-content">
                            <h4>100% secure</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon5.png" alt="">
                        <div class="support-content">
                            <h4>Winning reward</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon6.png" alt="">
                        <div class="support-content">
                            <h4>Live Support</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
            </div>
        </div>
    </div>
    <!-- End About Area -->
    <!-- Start Games Area -->
    <div class="games-area games-area-2  bg-color area-padding-2">
            <div class="container">
              <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>Online games</h3>
							<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
						</div>
					</div>
				</div>
               <div class="row">
					<div class="all-games">
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Spin Wheel</h4> 
                                <div class="games-img">
                                    <img src="img/games/ab-icon.png" alt="">
                                </div>
                                <a class="games-btn" href="Login.aspx">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Best Reward</h4> 
                                <div class="games-img">
                                    <img src="img/games/g2.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Win Award</h4> 
                                <div class="games-img">
                                    <img src="img/games/g3.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                       <%-- <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>best win</h4> 
                                <div class="games-img">
                                    <img src="img/games/g4.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                               <h4>Pirates of sea</h4> 
                                <div class="games-img">
                                    <img src="img/games/g5.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                               <h4>Hunter fight</h4> 
                                <div class="games-img">
                                    <img src="img/games/g6.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>--%>
                        <!-- single-games end-->
					</div>
                </div>
            </div>
        </div>
    <!-- Games area End -->
    <!-- Start Chips area -->
    <%-- <div class="chips-area bg-color-2 area-padding-2">
            <div class="container">
                 <div class="row">
                    <div class="chips-content">
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">100 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips2.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">200 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips2.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">300 Coins</span>
                                   <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips3.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">300 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">500 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">400 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- End Achivement area -->
    <!-- Start How to area -->
    <div class="how-to-area bg-color area-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>How to start</h3>
                        <p>Help agencies to define their new business objectives and then create professional software.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all-how">
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how first-item">
                            <div class="how-img">
                                <span class="h-number">01</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h1.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Get access</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how ">
                            <div class="how-img">
                                <span class="h-number">02</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h2.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Enter games</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how thired-item">
                            <div class="how-img">
                                <span class="h-number">03</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h3.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Win Award</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End How to area -->
    <!--Start payment-history area -->
    <div class="payment-history-area bg-color fix area-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>Games history</h3>
                        <p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="deposite-content">
                        <div class="diposite-box">
                            <div class="deposite-table">
                                <table>
                                    <tr>
                                        <th>Name</th>
                                        <th>Code Id</th>
                                        <th>Games</th>
                                        <th>Level</th>
                                        <th>Reward</th>
                                        <th>Games ID</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m.png" alt="">Ragner Lorth</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-122</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m1.png" alt="">Adams jems</td>
                                        <td>EmI-65342</td>
                                        <td>Danger war</td>
                                        <td>Level-132</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m2.png" alt="">Admond sayhel</td>
                                        <td>EmI-20053</td>
                                        <td>Casino</td>
                                        <td>Level-153</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m3.png" alt="">Jecky chen</td>
                                        <td>EmI-60754</td>
                                        <td>Redline</td>
                                        <td>Level-92</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m4.png" alt="">Junior mlind</td>
                                        <td>EmI-76076</td>
                                        <td>Casino</td>
                                        <td>Level-88</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m5.png" alt="">Andrew kolin</td>
                                        <td>EmI-76076</td>
                                        <td>Dicks game</td>
                                        <td>Level-184</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m6.png" alt="">Anjel loyel</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-102</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m7.png" alt="">Jenefer july</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-102</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End payment-history area -->
    <!-- Start Overview Area -->
   <%-- <div class="overview-area bg-color-2 fix area-padding">
            <div class="container">
                <div class="row">    
                       <table cellpadding="0" cellspacing="0" border="0">
                <tr>                    
                    <td width="438" height="582" class="the_wheel" align="center" valign="center">
                        <canvas id="canvas" width="434" height="434">
                            <p style="{color: white}" align="center">Sorry, your browser doesn't support canvas. Please try another.</p>
                        </canvas>
                    </td>
                </tr>
                          </table>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="overview-content">
                            <div class="overview-images">
                                <img src="img/about/ab.jpg" alt="">
                            </div>
                        </div>
                    </div>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="overview-text">
                            <h3>Playing games winning instant Reward and Bonus </h3>
						    <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create</p>
                            <ul>
                               <li><a href="#">Innovation idea latest business tecnology</a></li>
                                <li><a href="#">Digital content marketing online clients plateform</a></li>
                                <li><a href="#">Safe secure services for you online email account</a></li>
                            </ul>
                            <a class="overview-btn" href="#">Signup today</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- End Overview Area -->
    <!-- Start Blog Area-->
    <%--<div class="blog-area fix bg-color area-padding-2">
            <div class="container">
                <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
                            <h3>Games world news</h3>
							<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="blog-grid home-blog">
                        <!-- Start single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                               <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b1.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                   <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                            <i class="fa fa-calendar"></i>
                                            20 july, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            13
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Creative games design clients response is better</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                   <div class="blog-meta">
                                       <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            13 may, 2018
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            16
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games development is a best work in future world</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b2.jpg" alt="">
									</a>
								</div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b3.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                   <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            24 april, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            07
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>You can trust me and playing with best win</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games playerwant to be benifit pateform games.</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b4.jpg" alt="">
									</a>
								</div> 
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b5.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games player man want to be win any game</h4>
                                    </a>
                                </div> 
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games developer must complete thier</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b6.jpg" alt="">
									</a>
								</div>
                            </div>
                        </div>
                        <!-- End single blog -->
                    </div>
                </div>
                <!-- End row -->
            </div>
        </div>--%>
    <!-- End Blog Area-->
    <!-- Start Payments Area -->
    <%--<div class="payment-area bg-color">
            <div class="container">
               <div class="row">
					<div class="inner-payment">
					    <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h3>Games Partner</h3>
                                <p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card-list">
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/1.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/2.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/3.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/4.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/5.png" alt=""></a>
                                </div>
                            </div>
                        </div>
					</div>
                </div>
            </div>
        </div>--%>
    <!-- End Payments Area -->

</asp:Content>


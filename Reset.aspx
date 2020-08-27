<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="Reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8"/>
		<meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Password Reset - Genting Vegas </title>
    <meta name="description" content=""/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>

		<!-- favicon -->		
		<link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico"/>

		<!-- all css here -->

		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<!-- font-awesome css -->
		<link rel="stylesheet" href="css/font-awesome.min.css"/>
		<!-- style css -->
		<link rel="stylesheet" href="style.css"/>
		<!-- responsive css -->
		<link rel="stylesheet" href="css/responsive.css" />

		<!-- modernizr css -->
		<script src="js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- all js here -->

		<!-- jquery latest version -->
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
		<!-- bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Form validator js -->
		<script src="js/form-validator.min.js"></script>
		<!-- plugins js -->
		<script src="js/plugins.js"></script>
    
     <style>
            /*table input[type="text"],input[type="button"]
            {
              color: white;
              border-radius: 5px;
              border: 1px solid black;
            }
            table input[type="text"]
            {
             
              text-align: center;
            }
            */
            .form-control{
                color: #fff;
            }
        .form-group{
              padding:12px;
              
            }
        .form-group>label{
          position:absolute;
          top:-1px;
          left:20px;
          /*background-color:white;*/
        }

        .form-group>input{
          border:none;
        }
       
        </style>
</head>
<body>
    <div class="login-area area-padding fix">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                               <form  runat="server" >                                                              
                                 <div id="Forget" class="login-form">
                                    <h4 class="login-title text-center">Forget Password</h4>
                                    <div class="row">                                      
                                            <div  class="col-md-12 col-sm-12 col-xs-12 form-group" >
                                                <%--<label>User Id</label>--%>
                                                <input type="text" id="EmailId" runat="server" class="form-control" placeholder="Email ID" required="required" autocomplete="off"  />
                                            </div>
                                                                                  
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                                   <asp:Button ID="BtnForget" runat="server"  Text="Send Password Reset Link"  CssClass="slide-btn login-btn" OnClick="BtnForget_Click"  />                                               
                                                <div id="msgSubmit1" class="h3 text-center hidden"></div>
                                                <div class="clearfix"></div>
                                            </div>

                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">                                              
                                                <div class="sign-icon">    
                                                     <div class="acc-not">Have Account <a href="Login.aspx">Login</a></div>
                                                    <div class="acc-not">Don't have an account  <a href="Signup.aspx">Sign up</a></div>
                                                     <div class="acc-not">Back to <a href="Home.aspx">Home</a></div>
                                                </div> 
                                            </div>                                         
                                        </div>
                                     </div>
                                </form>
                            </div>
                        </div>
                     </div>
                    </div>
                </div>
        </div>
        <!-- End Slider Area -->  
    <!-- Start Footer Area -->
        <footer class="footer-1"> 
            <!-- Start Footer Bottom Area -->
            <div class="footer-area-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="copyright">
                                <p>
                                    Copyright © 2020
                                    <a href="#">Play </a> All Rights Reserved
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Bottom Area -->
        </footer>
        <!-- End Footer Area -->
</body>
</html>

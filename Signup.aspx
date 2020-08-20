<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Signup - Genting Vegas </title>
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
    <link rel="stylesheet" href="css/responsive.css"/>

    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#FirstName ,#LastName").on("keypress keyup", function (event) {
                var key = event.keyCode;
                if (!((key == 8) || (key == 32) || (key == 46) || (key >= 97 && key <= 122) || (key >= 65 && key <= 90))) {
                    event.preventDefault();
                }
            });
            $("#PhoneNumber,#Code").on("keypress keyup", function (event) {
                $(this).val($(this).val().replace(/[^0-9\.+]/, ''));
                if ((event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            });


        });
    </script>
</head>
<body data-spy="scroll" data-target="#navbar-example">

 
    <!-- Start Slider Area -->
    <div class="login-area area-padding fix">
        <div class="login-overlay"></div>
        <div class="table">
            <div class="table-cell">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                            <div class="login-form signup-form">
                                <h4 class="login-title text-center">REGISTER</h4>
                                <div class="row">
                                    <form id="contactForm" runat="server" class="log-form">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="FirstName" runat="server" class="form-control" placeholder="Firstname" maxlength="10" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="LastName" runat="server" class="form-control" placeholder="Lastname" maxlength="30" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="PhoneNumber" runat="server" class="form-control" placeholder="Phone number" maxlength="10" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="email" id="Email" runat="server" class="form-control" placeholder="Your Email" maxlength="30" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="password" id="Password" runat="server" class="form-control" placeholder="Password" maxlength="20" required="required" autocomplete="off" data-error="Please enter your message subject" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="date" id="DOB" runat="server" class="form-control" required="required" max="2002-01-01" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <asp:DropDownList ID="Country" runat="server" CssClass="form-control" required="true">
                                                <asp:ListItem Selected="False">--Select Country--</asp:ListItem>
                                                <asp:ListItem>India</asp:ListItem>
                                                <asp:ListItem>Qatar</asp:ListItem>
                                                
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <select id="IDType" runat="server" class="form-control" >
                                                <option>--Selct ID--</option>
                                                <option value="Passport">Passport</option>
                                                <option value="Driving Licence">Driving Licence</option>
                                               
                                            </select>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="IDNo" runat="server" class="form-control" placeholder="ID No" required="required" data-error="Please enter your message subject" />
                                        </div>
                                         <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="Address" runat="server" class="form-control" placeholder="Address" required="required" data-error="Please enter your message subject" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="State" runat="server" class="form-control" placeholder="State" required="required" data-error="Please enter your message subject"  />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                             <input type="text" id="City" runat="server" class="form-control" placeholder="City" required="required" data-error="Please enter your message subject"  />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="Code" runat="server" class="form-control" placeholder="Code" required="required" maxlength="7" data-error="Please enter your message subject" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                            <div class="check-group flexbox">
                                                <label class="check-box">

                                                    <input type="checkbox" class="check-box-input" />
                                                    <span class="remember-text">I agree terms & conditions</span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                             <asp:Button ID="BtnSignup" runat="server" Text="Signup" CssClass="slide-btn login-btn" OnClick="BtnSignup_Click"  />
                                            <%--<button type="submit" id="submit" runat="server" class="slide-btn login-btn">Signup</button>--%>
                                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                            <%--<div class="clear"></div>
                                                <div class="separetor text-center"><span>Or with signup</span></div>
                                                <div class="sign-icon">
                                                    <ul>
                                                        <li><a class="facebook" href="#">Facebook</a></li>
                                                        <li><a class="twitter" href="#">twitter</a></li>
                                                        <li><a class="google" href="#">google+</a></li>
                                                    </ul>
                                                    <div class="acc-not">have an account?  <a href="Login.aspx">Login</a></div>
                                                </div>--%>
                                            <div class="acc-not">have an account?  <a href="Login.aspx">Login</a></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Slider Area -->

    <!-- all js here -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Form validator js -->
    <script src="js/form-validator.min.js"></script>
    <!-- plugins js -->
    <script src="js/plugins.js"></script>
</body>
</html>

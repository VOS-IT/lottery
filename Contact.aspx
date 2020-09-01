<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#Name').on("keypress keyup", function (event) {
                var key = event.keyCode;
                if (!((key == 8) || (key == 32) || (key == 46) || (key >= 97 && key <= 122) || (key >= 65 && key <= 90))) {
                    event.preventDefault();
                }
            });
        });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact-area bg-color-2 area-padding">
            <div class="container">
               <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>Contact us</h3>
							<%--<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>--%>
						</div>
					</div>
				</div>
               <div class="row">
                    <div class="contact-inner">
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="ti-email"></i>
                                    <p>
                                        Email : help@gentingvegas.live<br>
                                        <span>Web: www.gentingvegas.live</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="ti-link"></i>
                                    <p>
                                        Facebook :gentingvegas<br>
                                        <span>Twiter:gentingvegas</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="ti-map"></i>
                                    <p>
                                        Location : The Pinnacle Pirsiaran Lagoon, Subang Suit 20-01 & 20-02b, Level 20<br>
                                        <span>Bandra Sunway, 47500,Malaysia</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="contact-inner">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <!-- Start Map -->
                            <div class="contact-images">
                                <img src="img/about/contactus.jpg" alt="">
                            </div>
                            <!-- End Map -->
                        </div>
                        <!-- End contact icon -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="contact-form">
                                <div class="row">
                                    <%--<form id="contactForm" class="contact-form">--%>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="Name" runat="server" class="form-control" placeholder="Name" required data-error="Please enter your name">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" class="email form-control" runat="server" id="Email" placeholder="Email" required data-error="Please enter your email">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="text" id="Subject" class="form-control" runat="server" placeholder="Subject" required data-error="Please enter your message subject">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <textarea id="Message" rows="7" placeholder="Message" runat="server" class="form-control" required data-error="Write your message"></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <asp:Button ID="BtnSubmit" runat="server"  Text="Submit"  CssClass="contact-btn" OnClick="BtnSubmit_Click"  />                                            
                                            <div id="msgSubmit" class="h3 text-center hidden"></div> 
                                            <div class="clearfix"></div>
                                        </div>   
                                    <%--</form>--%>  
                                </div>
                            </div>
                        </div>
                        <!-- End contact Form -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact area -->
</asp:Content>


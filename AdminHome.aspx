<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="AddTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <div class="login-form">
                                    <h4 class="login-title text-center">DASHBOARD</h4>
                                    <div class="row">                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>--%>
    <div class="achivement-area bg-color fix area-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>DASHBOARD</h3>
                        
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="achivement-content">
                    
                    <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-achive first-achive">
                                <div class="achive-image">
                                    <img src="img/about/online.png" alt="">
                                </div>
                                <div class="achivement-text">
                                    <span id="ActiveCount" runat="server" class="achive-number"></span>
                                    <h5>Live online</h5>
                                </div>
                            </div>
                        </div>
                   <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-achive second-achive">
                                <div class="achive-image">
                                    <img src="img/about/activemem.png" alt="">
                                </div>
                                <div class="achivement-text">
                                    <span id="userCount" runat="server" class="achive-number"></span>
                                    <h5>Active Members</h5>
                                </div>
                            </div>
                        </div>

                    <%-- <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-achive second-achive">
                                <div class="achive-image">
                                    <img src="img/about/achive1.png" alt="">
                                </div>
                                <div class="achivement-text">
                                    <span id="Span1" runat="server" class="achive-number"></span>
                                    <h6>Active Members</h6>
                                </div>
                            </div>
                        </div>--%>
                        <%--<div class="col-md-4 col-sm-4 col-xs-12">
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
                        </div>--%>
                  
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>


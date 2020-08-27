<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Start Chips area -->
        <div class="ticket-area bg-color-2 area-padding-2">
            <div class="container">
                 <div class="row">
                    <div class="ticket-content">
                       <%-- <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-ticket">
                                <span id="TicketPrice" runat="server" class="ticket-rate"></span>
                                <div class="ticket-image">
                                    <span class="win-price">Win Reward</span>
                                    <span id="PriceAmount" runat="server" class="win-money"></span>
                                    <img src="img/about/lottery.png" alt=""/>
                                </div>
                                <div class="ticket-text">
                                   -<h4 class="ticket-name">Las Vegas Lottery</h4>
                                    <h3 id="count" runat="server" class="ticket-name"></h3>
                                    <asp:Button ID="BtnBuyTicket" runat="server" Text="Buy" CssClass="ticket-btn" OnClick="BtnBuyTicket_Click" />
                                    <a class="ticket-btn" href="#">Buy Now</a>
                                </div>
                            </div>
                        </div>--%>
                          <div class="col-md-4 col-sm-4 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-ticket">
                                <%--<span id="Span1" runat="server" class="ticket-rate"></span>--%>
                                <div class="ticket-image">
                                    <span class="win-price">Winning wheel</span>
                                    <span id="Span2" runat="server" class="win-money"></span>
                                    <img src="img/about/ab-icon.png" alt=""/>
                                </div>
                                <div class="ticket-text">
                                    <%--<h4 class="ticket-name">Las Vegas Lottery</h4>--%>
                                    <h3 id="H1" runat="server" class="ticket-name"></h3>
                                    <asp:Button ID="BtnWheel" runat="server" Text="Play" CssClass="ticket-btn" OnClick="BtnWheel_Click" />
                                    <%--<a class="ticket-btn" href="#">Buy Now</a>--%>
                                </div>
                            </div>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
      
      
       
        <!-- Start Chips area -->
</asp:Content>


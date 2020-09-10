<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="PlayLottery.aspx.cs" Inherits="PlayLottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Bottom Header -->
       <%-- <div class="page-area" style="background:url(img/background/Lottery.jpg)">
            <div class="breadcumb-overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcrumb">
                            <div class="section-headline">
                                <h2>Lottery</h2>
                            </div>
                            <ul>
                                <li class="home-bread">Home</li>
                                <li>Lottery</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- END Header -->
    <!-- Start Chips area -->
   <%-- <div class="ticket-area bg-color-2 area-padding-2">
        <div class="container">
            <div class="row">
                <div class="ticket-content">
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-ticket">
                            <span id="TicketPrice" runat="server" class="ticket-rate"></span>
                            <div class="ticket-image">
                                <span class="win-price">Win Reward</span>
                                <span id="PriceAmount" runat="server" class="win-money"></span>
                                <img src="img/about/lottery.png" alt="" />
                            </div>
                            <div class="ticket-text">
                                <h4 class="ticket-name">Las Vegas Lottery</h4>
                                <h3 id="count" runat="server" class="ticket-name"></h3>
                                <asp:Button ID="BtnBuyTicket" runat="server" Text="Buy" CssClass="ticket-btn" OnClick="BtnBuyTicket_Click" />
                                <a class="ticket-btn" href="#">Buy Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Start Chips area -->
    <div class="lottery-area bg-color area-padding-2" style="padding: 130px 0px 10px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>Lottery</h3>
                        <%--<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="lottery-content">
                    <!-- Single Lottery area  -->
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="single-lottery">
                            <div class="lottery-top">
                                <span id="TicketPrice" runat="server" class="ticket-rate">0.023</span>
                                <%--<h4>Las vegas Jackpot</h4>--%>
                                <span class="win-price">Win Reward</span>
                                <span id="PriceAmount" runat="server"  class="win-money">200k</span>
                                <div class="buy-ticket-btn">
                                     <asp:Button ID="BtnBuyTicket" runat="server" Text="Add Cart" CssClass="s-menu" OnClick="BtnBuyTicket_Click" />
                                    <%--<a class="ticket-btn" href="#">Add Cart</a>--%>
                                </div>
                            </div>
                            <div class="auto-number">
                                <div class="number-top">
                                    <input type="radio" id="auto-num" name="auto-num">
                                    <label for="auto-num">
                                        Available Numbers
                                        <%--<span class="genreted-text">Automatically Random Number will be Generated</span>--%>
                                    </label>
                                </div>
                                <div class="number-all">
                                    <ul class="number-serial">
                                        <li><a href="#">01</a></li>
                                        <li><a href="#">02</a></li>
                                        <li><a href="#">03</a></li>
                                        <li><a href="#">04</a></li>
                                        <li><a href="#">05</a></li>
                                        <li><a href="#">06</a></li>
                                        <li><a href="#">07</a></li>
                                        <li><a href="#">08</a></li>
                                        <li><a href="#">09</a></li>
                                        <li><a href="#">10</a></li>                                        
                                    </ul>
                                </div>
                            </div>
                            <div class="manual-number">
                                <div class="number-top">
                                    <input type="radio" id="manual-num" name="auto-num">
                                   <%-- <label for="manual-num">
                                        Manual Number Selected
                                        <span class="genreted-text">Type 5 Number Selected Manually</span>
                                    </label>--%>
                                </div>                             
                                      
                               
                                <div class="self-number">
                                    <div class="self-ticket">
                                        <span>Your Ticket Number :</span>
                                        <ul class="self-number" id="list">
                                            <%--<li><a href="#">04</a></li>
                                            <li><a href="#">07</a></li>
                                            <li><a href="#">10</a></li>--%>                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single Lottery area  -->                 
                </div>
            </div>
        </div>
    </div>
    <script>
            var count = 0;
            $('.number-serial li').click(function() {
                elementlist = $(this).text();                
                if (count <= 2)
                {
                    count = count + 1;
                    $('#list').append('<li><a href="#">' + elementlist + '</a></li>');
                    $(this).addClass("active");
                }
                else
                {
                        alert("Only three Tickets are allowed");
                }                               
            });
    </script>
</asp:Content>


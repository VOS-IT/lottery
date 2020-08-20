<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Spin.aspx.cs" Inherits="Spin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!-- Start Spin Area -->
    <div class="overview-area bg-color-2 fix area-padding">
            <div class="container">
                <div class="row">    
                       <table cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
                        <div class="power_controls">    
                            <input type="button" id="spin_button" class="slide-btn login-btn"  onClick="startSpin();" value="Spin" />
                            <%--<img id="spin_button" src="spin_off.png" alt="Spin" onClick="startSpin();" />--%>
                           <%-- <br /><br />
                            &nbsp;&nbsp;<a href="#" onClick="resetWheel(); return false;">Play Again</a><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(reset)--%>
                        </div>
                    </td>
                    <td width="438" height="582" class="the_wheel" align="center" valign="center">
                        <canvas id="canvas" width="434" height="434">
                            <p style="{color: white}" align="center">Sorry, your browser doesn't support canvas. Please try another.</p>
                        </canvas>
                    </td>
                </tr>
            </table>
                   <%-- <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="overview-content">
                            <div class="overview-images">
                                <img src="img/about/ab.jpg" alt="">
                            </div>
                        </div>
                    </div>--%>
                 <%-- <div class="col-md-6 col-sm-6 col-xs-12">
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
                    </div>--%>
                </div>
            </div>
        </div>
    <!-- End Spin Area -->
</asp:Content>


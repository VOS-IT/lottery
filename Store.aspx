<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="AddTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <div class="login-form">
                                    <h4 class="login-title text-center">Add Store</h4>
                                    <div class="row">
                                        <%--<form id="contactForm" runat="server" class="log-form">--%>
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group"> 
                                                <label>Store Name</label>
                                                <input type="text" id="StoreName" runat="server" class="form-control" placeholder="Store Name" required="required" autocomplete="off"  data-error-messsage="Please enter Store Name"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                 <label>Address</label>
                                                <input type="text" id="Address" runat="server" class="form-control" placeholder="Address" autocomplete="off" required="required"   data-error="Please enter Address"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                 <label>Timing</label>
                                                <input type="text" id="Timing" runat="server" class="form-control" placeholder="Timing" autocomplete="off" required="required"  data-error="Please enter Timing"/>
                                            </div>                                              
                                                                                       
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                                <asp:Button ID="BtnAddStore" runat="server"  Text="Add" CssClass="slide-btn login-btn" OnClick="BtnAddStore_Click" />                                                 
                                                <%--<button type="submit" runat="server" id="submit" class="slide-btn login-btn">Login</button>--%>
                                                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                                                <div class="clearfix"></div>
                                            </div>                                            
                                        <%--</form>--%> 
                                    </div>                                     
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
         <div class="payment-history-area bg-color fix area-padding" style="background:none;padding:23px;">
            <div class="container">
               <%-- <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>Store</h3>							
						</div>
					</div>
				</div>--%>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="deposite-content">
                            <div class="diposite-box">
                                <div class="deposite-table">                                    
                                <asp:Literal ID = "StoreInfo" runat = "server" />                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>


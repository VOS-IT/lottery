<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Lottery.aspx.cs" Inherits="Lottery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="AddTicket" style="padding: 100px 0px; position: relative;">
        <div class="login-overlay"></div>
        <div class="table">
            <div class="table-cell">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                            <div class="login-form">
                                <h4 class="login-title text-center">Add Ticket</h4>
                                <div class="row">
                                    <%--<form id="contactForm" runat="server" class="log-form">--%>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Ticket No</label>
                                        <input type="text" id="TicketNo" runat="server" class="form-control" placeholder="Ticket No" required="required" autocomplete="off" data-error-messsage="Please enter ticket no" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Ticket Price</label>
                                        <input type="text" id="TicketPrice" runat="server" class="form-control" placeholder="Ticket Price" autocomplete="off" required="required" maxlength="8" data-error="Please enter ticket price" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>PriceAmount</label>
                                        <input type="text" id="PriceAmount" runat="server" class="form-control" placeholder="PriceAmount" autocomplete="off" required="required" maxlength="8" data-error="Please enter price amount" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <%--<asp:TextBox ID="CloseDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>--%>
                                        <label>Closing Date</label>
                                        <input type="date" id="CloseDate" runat="server" class="form-control" autocomplete="off" required="required" data-error="Please enter price amount" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Draw Date</label>
                                        <%--<asp:TextBox ID="DrawDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>--%>
                                        <input type="date" id="DrawDate" runat="server" class="form-control" autocomplete="off" required="required" data-error="Please enter price amount" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Status No</label>
                                        <asp:DropDownList ID="Status" runat="server" CssClass="form-control" required="true">
                                            <asp:ListItem>Open</asp:ListItem>
                                            <asp:ListItem>Close</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>

                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <asp:Button ID="BtnAddTicket" runat="server" Text="Add" CssClass="slide-btn login-btn" OnClick="BtnAddTicket_Click" />

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
                <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>Tickets</h3>							
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="deposite-content">
                            <div class="diposite-box">
                                <div class="deposite-table">  
                                    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False"  ViewStateMode="Enabled" GridLines="None"   >       
                                        
            <Columns>
                 <asp:TemplateField HeaderText="Ticket No">            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TicketNo") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Ticket Price"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TicketPrice") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Price Amount"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("PriceAmount") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Display Date"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DisplayDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Close Date"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CloseDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Draw Date"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DrawDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Status">                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Status") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                 
            </Columns>          
        </asp:GridView>     
                                                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
           
          </div>
</asp:Content>


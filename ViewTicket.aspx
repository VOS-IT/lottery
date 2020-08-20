<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewTicket.aspx.cs" Inherits="ViewTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
   
     <div id="ViewTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
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

                <asp:TemplateField HeaderText="Display Data"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DisplayDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Close Data"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CloseDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Draw Data"> 
                                       
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
                                <%--<asp:Literal ID = "StoreInfo" runat = "server" />--%>                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
</asp:Content>


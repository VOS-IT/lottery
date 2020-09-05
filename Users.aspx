<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="ViewUsers" %>

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
							<h3>Users Details</h3>							
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="deposite-content">
                            <div class="diposite-box">
                                <div class="deposite-table table-responsive" style="max-height:600px;overflow-y:scroll;">                          
                <asp:GridView ID="GridViewUsers" runat="server"  AutoGenerateColumns="False"  ViewStateMode="Enabled" GridLines="None" OnRowCommand="GridView1_RowCommand">
         
            <Columns>
                 <asp:TemplateField HeaderText="Fisrt Name"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("FirstName") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Last Name"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("LastName") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Phone No">             
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("PhoneNumber") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Email"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Email" runat="server" Text='<%# Bind("Email") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Password"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

               <%-- <asp:TemplateField HeaderText="DOB"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("DateOfBirth","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Nationality"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Nationality") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>      
                 <asp:TemplateField HeaderText="ID"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("IDType") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Id No"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("IdNo") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Address"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Address") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="State"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("State") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>   
                 <asp:TemplateField HeaderText="City"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("City") %>' >
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Code">                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Code") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> --%>
                 <asp:TemplateField>
                        <ItemTemplate>
                              <asp:Button ID="BtnView" CssClass="slide-btn login-btn" runat="server" Text="View" CommandName="View" Height="35px" CommandArgument="<%# Container.DataItemIndex %>" />
                             </ItemTemplate>
                    <%-- <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" CssClass="slide-btn login-btn" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" CssClass="slide-btn login-btn" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>   --%>
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


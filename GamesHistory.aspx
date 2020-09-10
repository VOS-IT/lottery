<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GamesHistory.aspx.cs" Inherits="GamesHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {


        });
    </script>
    <div id="GamesHistory" style="padding: 100px 0px; position: relative;">
        <div class="login-overlay"></div>
        <div class="table">
            <div class="table-cell">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                            <div class="login-form">
                                <h4 class="login-title text-center">Add Game History</h4>
                                <div class="row">
                                    <%--<form id="contactForm" runat="server" class="log-form">--%>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>User Name</label>
                                        <input type="text" id="UserName" runat="server" class="form-control" placeholder="User Name" required="required" autocomplete="off" data-error-messsage="Please enter Store Name" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Code</label>
                                        <input type="text" id="Code" runat="server" class="form-control" placeholder="Code" autocomplete="off" required="required" data-error="Please enter Address" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Game Name</label>
                                        <input type="text" id="GameName" runat="server" class="form-control" placeholder="Game Name" autocomplete="off" required="required" data-error="Please enter Timing" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Reward</label>
                                        <input type="text" id="Reward" runat="server" class="form-control num" placeholder="Reward" maxlength="6" autocomplete="off" required="required" data-error="Please enter Timing" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                        <label>Id</label>
                                        <input type="text" id="GameId" runat="server" class="form-control" placeholder="Id" autocomplete="off" required="required" data-error="Please enter Timing" />
                                    </div>

                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <asp:Button ID="BtnAddGamesHistory" runat="server" Text="Add" CssClass="slide-btn login-btn" OnClick="BtnAddGamesHistory_Click" />
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
        <div class="payment-history-area bg-color fix area-padding" style="background: none; padding: 23px;">
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
                        <div class="deposite-content1">
                            <div class="diposite-box">
                                <div class="deposite-table table-responsive" style="max-height: 600px; overflow-y: scroll;">
                                    <asp:GridView id="GridViewGamesHistory" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" ViewStateMode="Enabled" GridLines="None" >
                                        <Columns>
                                            <asp:TemplateField HeaderText="Winner">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblWinnerName" runat="server" Text='<%# Bind("Winner") %>'>  
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Game">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblGameName" runat="server" Text='<%# Bind("Game") %>'>  
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Reward">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblReward" runat="server" Text='<%# Bind("Reward") %>'>  
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>                                          

                                           <%-- <asp:TemplateField HeaderText="Status">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("Status") %>'>
                                                    </asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="Status" runat="server" CssClass="form-control" required="true" SelectedValue='<%# Bind("Status") %>'>
                                                        <asp:ListItem>Open</asp:ListItem>
                                                        <asp:ListItem>Close</asp:ListItem>
                                                    </asp:DropDownList>
                                                </EditItemTemplate>
                                            </asp:TemplateField>--%>
                                            <%--<asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btn_Edit" CssClass="slide-btn login-btn" runat="server" Text="Update" CommandName="Edit" />
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:Button ID="btn_Update" runat="server" CssClass="slide-btn login-btn" Text="Update" CommandName="Update" />
                                                    <asp:Button ID="btn_Cancel" runat="server" CssClass="slide-btn login-btn" Text="Cancel" CommandName="Cancel" />
                                                </EditItemTemplate>
                                            </asp:TemplateField>--%>
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
    </div>
</asp:Content>


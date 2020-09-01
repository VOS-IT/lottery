<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Genealogy.aspx.cs" Inherits="Referral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="LevelView" style="padding: 132px 0px 0px;position: relative;">                     
                                         
                                <asp:Literal ID = "LevelInfo" runat = "server" />                                  
       </div>

    <%--<div id="LevelView" style="padding: 148px 0px;position: relative;">                     
         <div class="payment-history-area bg-color fix area-padding" style="background:none;padding:23px;">
            <div class="container">
                <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>level1</h3>							
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="deposite-content">
                            <div class="diposite-box" style="width: 33%;" >
                                <div class="deposite-table">                                    
                                <asp:Literal ID = "Literal1" runat = "server" />                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>--%>
</asp:Content>


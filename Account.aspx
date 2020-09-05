<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .account_det {
                padding: 10px;
                background: #26253f;
                display: block;
                overflow: hidden;
                margin-bottom: 20px;
                border-radius: 3px;
            } 
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 <!-- Start games Area -->
        <div class="games-play-area bg-color-2 area-padding" style="padding-top:190px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="tab-menu">
                                <ul role="tablist" class="acnt_list">
                                    <li class="account_det">
                                        <a href="#p-view-1" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Balance and Profile</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-2" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Account Summary</h6>
                                            </div>
                                        </a>
                                    </li>
                                   <%-- <li class="account_det">
                                        <a href="#p-view-3" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Refer and Earn</h6>
                                            </div>
                                        </a>
                                    </li>--%>
                                    <li class="account_det">
                                        <a href="#p-view-4" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Genealogy</h6>
                                            </div>
                                        </a>
                                    </li>
                               </ul>
                            </div>
                        </div>
                       
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <div class="tab-content">
                                <div class="tab-pane active" id="p-view-1">
                                    <div class="section-headline text-center">
                                        <%--<div class="contact-area bg-color-2 area-padding">--%>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h3>Personal Information</h3>
                            
                        </div>
                    </div>
                </div>
                <div class="row" style="text-align:left;margin-left:-200px !important">
                    <div class="contact-inner">
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact icon -->
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <div class="contact-form">
                                <div class="row" >                                  
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>First Name</label>
                                            <input type="text" id="FirstName" runat="server" class="form-control" readonly="readonly"   />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Last Name</label>
                                            <input type="text" id="LastName" runat="server" class="form-control" placeholder="Lastname"  readonly="readonly"  />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Phone Number</label>
                                            <input type="text" id="PhoneNumber" runat="server" class="form-control" placeholder="Phone number" />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Email</label>
                                            <input type="email" id="Email" runat="server" class="form-control" placeholder="Your Email"  readonly="readonly"  />
                                        </div>
                                       <%-- <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="Password" runat="server" class="form-control" placeholder="Password" readonly="readonly"  />
                                        </div>--%>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Date Of Birth</label>
                                            <input type="text" id="DOB" runat="server" class="form-control"  readonly="readonly"   />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Nationality</label>                                            
                                                <input type="text" id="Nationality" runat="server" class="form-control" placeholder="ID No"  readonly="readonly"   />                                         
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>ID</label>
                                           <input type="text" id="ID" runat="server" class="form-control" placeholder="ID No"  readonly="readonly"    />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>ID No</label>
                                            <input type="text" id="IDNo" runat="server" class="form-control" placeholder="ID No"  readonly="readonly"  />
                                        </div>
                                         <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                             <label>Address</label>
                                            <input type="text" id="Address" runat="server" class="form-control" placeholder="Address"  readonly="readonly"   />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>State</label>
                                            <input type="text" id="State" runat="server" class="form-control" placeholder="State" readonly="readonly"    />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>City</label>
                                             <input type="text" id="City" runat="server" class="form-control" placeholder="City"  readonly="readonly"   />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Code</label>
                                            <input type="text" id="Code" runat="server" class="form-control" placeholder="Code"   readonly="readonly"  />
                                        </div>
                                       
                                       <%-- <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                             <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="slide-btn login-btn" OnClick="BtnUpdate_Click"   />
                                            
                                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                                            <div class="clearfix"></div>
                                        </div>--%>
                                       
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact Form -->
                    </div>
                </div>
            </div>
        <%--</div>--%>
  
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-2">
                                    <div class="section-headline text-center">
                                        <h3>Account Summary</h3>
                                        <label id="Balance" >Available Balance</label>
                                        <%--<p>Replacing a  maintains the amount of lines. When replacing a selection.</p>--%>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-3">
                                    <div class="section-headline text-center">
                                        <h3>Genealogy</h3>
                                        
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-4">
                                    <div class="section-headline text-center">
                                        <h3>Genealogy</h3>
                                        
                                         <asp:Literal ID = "LevelInfo" runat = "server" />                                  
                                                                                 
                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
        <!-- End games end -->


</asp:Content>


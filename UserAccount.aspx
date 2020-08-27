<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Start Slider Area -->
    
         <div class="contact-area bg-color-2 area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h3>Personal Information</h3>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="contact-inner">
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact icon -->
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <div class="contact-form">
                                <div class="row" >                                  
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>First name</label>
                                            <input type="text" id="FirstName" runat="server" class="form-control" readonly="readonly"   />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Last name</label>
                                            <input type="text" id="LastName" runat="server" class="form-control" placeholder="Lastname"  readonly="readonly"  />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>PhoneNumber</label>
                                            <input type="text" id="PhoneNumber" runat="server" class="form-control" placeholder="Phone number" readonly="readonly"    />
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
                                            <label>IDNo</label>
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
        </div>
  
</asp:Content>


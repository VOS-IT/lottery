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
        <%--<div class="games-play-area bg-color-2 area-padding" style="padding-top:190px">
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
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Reference Code</label>
                                            <input type="text" id="ReferralCode" runat="server" class="form-control" placeholder="Your Email"  readonly="readonly"  />
                                        </div>  
                                       <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                             <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="slide-btn login-btn" OnClick="BtnUpdate_Click" />                                            
                                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                                            <div class="clearfix"></div>
                                        </div>                                       
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact Form -->
                    </div>
                </div>
            </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-2">
                                    <div class="section-headline text-center">
                                        <h3>Account Summary</h3>
                                        <label id="Balance" >Available Balance</label>
                                        
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
                                                                        
                                                                                 
                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- End games end -->

    <div class="games-play-area bg-color-2 area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="tab-menu">
                                <ul role="tablist" class="acnt_list">
                                    <li class="account_det">
                                        <a href="#p-view-1" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>My Balance and Profile</h6>
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
                                                <h6>Account Verification</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-5" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Deposit History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-6" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Commission History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-7" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Withdraw History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-8" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Commission Withdraw History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-9" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Betting History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-10" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Bonus History</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-11" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Change My Password</h6>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="account_det">
                                        <a href="#p-view-12" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Genealogy</h6>
                                            </div>
                                        </a>
                                    </li>
                                   <%-- <li class="account_det">
                                        <a href="#p-view-13" role="tab" data-toggle="tab">
                                            <div class="gaimer-content">
                                                <h6>Logout</h6>
                                            </div>
                                        </a>
                                    </li>--%>
                               </ul>
                            </div>
                        </div>
                        <%--<div class="col-md-1 col-sm-1 col-xs-12">
                        </div>--%>
                        <div class="col-md-8 col-sm-8 col-xs-12" style="padding-left: 60px;">
                            <div class="tab-content">
                                <div class="tab-pane active" id="p-view-1">
                                    <div class="section-headline text-left">
                                        <h5>My Balance and Profile</h5>
                                        <hr>
                                        <!-- <p>Replacing a  maintains the amount of lines. When replacing a selection.</p> -->
                                    </div>
                                    <div class="contact-form">
                                        <div class="row" style="padding-left: 20px;">
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
                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                            <label>Reference Code</label>
                                            <input type="text" id="ReferralCode" runat="server" class="form-control" placeholder="Your Email"  readonly="readonly"  />
                                        </div>
                                            <%--<form id="contactForm" method="POST" action="contact.php" class="contact-form">
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="User Id" required >
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="Caping Limit" required>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="email" class="email form-control" id="email" placeholder="Email" required >
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="Mobile number" required>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="First Name" required>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="Last Name" required>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="PAN No" required>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="Aadhar No" required>
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <input type="text" id="" class="form-control" placeholder="Address" required>
                                                </div> 
                                                <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                                                    <button type="submit" id="submit" class="contact-btn">Submit</button>
                                                </div> 
                                                <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                                                    <button type="submit" id="cancel" class="contact-btn">Cancel</button>
                                                </div>
                                            </form>  --%>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-2">
                                    <div class="section-headline text-left">
                                        <h5>Account Summary</h5>
                                        <hr>
                                    </div>
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div class="tabsummary">
                                                <h6>Game Balance</h6>
                                                <p>Available Balance : 0.00</p>
                                                <p>Eligibility To Withdraw : 0.00</p>
                                                <p>Total Add Fund : 0.00</p>
                                                <p>Total Bonus : 0.00</p>
                                                <p>Total Bet : 0.00</p>
                                                <p>Total Win : 0.00</p>
                                                <p>Total Withdraw : 0.00</p>
                                                <p>Total Bonus Deduction : 0.00</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div class="tabsummary">
                                                <h6>Commission and Rebate Balance</h6>
                                                <p>Available Balance : 0.00</p>
                                                <p>Eligibility To Withdraw : 0.00</p>
                                                <p>Total Rebate : 0.00</p>
                                                <p>Total Withdraw : 0.00</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="tab-pane" id="p-view-3">
                                    <div class="section-headline text-left">
                                        <h5>Refer and Earn</h5>
                                        <hr>
                                        <h6>https://www.beewin.live/index.php?refercode=1005001007</h6>
                                    </div>
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>--%>
                                <div class="tab-pane" id="p-view-4">
                                    <div class="section-headline text-left">
                                        <h5>Account Verification</h5>
                                        <hr>
                                    </div>
                                    <div>
                                        <p>To verify your account and continue playing at beewin.live, please upload the requested documents below. It's safe and secure.</p>
                                    </div> 
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                                            <div class="tab4summary">
                                                <h5>IDENTITY</h5>
                                                <input type="text" id="" class="form-control textfield" placeholder="PAN No" required>
                                                <div class="uploaddiv">
                                                    <label>PAN Card :</label>
                                                    <!-- </div> -->
                                                    <div class="file btn btn-md btn-primary"> UPLOAD
                                                        <input type="file" name="file"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <div class="tab4summary">
                                                <h5>IDENTITY</h5>
                                                <input type="text" id="" class="form-control textfield" placeholder="Aadhar No" required>
                                                <div class="uploaddiv">
                                                    <label>Aadhar No :</label>
                                                    <!-- </div> -->
                                                    <div class="file btn btn-md btn-primary"> UPLOAD
                                                        <input type="file" name="file"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                  <%--  <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-12 ">
                                            <div class="tab4summary">
                                                <h5>CREDIT/ DEBIT CARD</h5>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                         <i class="fa fa-credit-card fa-5x"></i>
                                                    </div>
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-8">
                                                        <div>Your Credit or Debit card:</div>
                                                        <div class="uploaddiv1">
                                                            <div class="file btn btn-md btn-primary"> UPLOAD
                                                               <input type="file" name="file"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <div class="tab4summary">
                                                <h5>OTHER PROOF</h5>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <i class="fa fa-camera-retro fa-5x"></i> 
                                                        <!-- <i class="fa fa-id-card-o"></i> -->
                                                    </div>
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-8">
                                                        <div>Your utility bills:</div>
                                                        <div class="uploaddiv1">
                                                            <div class="file btn btn-md btn-primary"> UPLOAD
                                                               <input type="file" name="file"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <br>
                                    <br>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <button class="btn btn-danger btnclass">CANCEL</button>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-12 "></div>
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <button class="btn btn-primary btnclass">SAVE</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-5">
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-3 col-sm-3 col-xs-12 ">
                                            <h5 class="section-headline text-left">Deposit History</h5>
                                        </div>
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="section-headline text-right">
                                                <%--<form id="form" name="form" class="form-inline">--%>
                                                    <div class="form-group">
                                                        <label for="startDate">From :</label>
                                                        <input id="startDate1" name="startDate" type="text" class="form-control" />
                                                        &nbsp;
                                                        <label for="endDate">To :</label>
                                                        <input id="endDate1" name="endDate" type="text" class="form-control" />
                                                    </div>
                                                <%--</form>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="margin-top: 0px;">
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-6">
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-4 col-sm-4 col-xs-12 ">
                                            <h5 class="section-headline text-left">Commission History</h5>
                                        </div>
                                        <!-- <div class="col-md-1 col-sm-1 col-xs-12 "></div> -->
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="section-headline text-right">
                                                <%--<form id="form" name="form" class="form-inline">--%>
                                                    <div class="form-group">
                                                        <label for="startDate">From :</label>
                                                        <input id="startDate2" name="startDate" type="text" class="form-control" />
                                                        &nbsp;
                                                        <label for="endDate">To :</label>
                                                        <input id="endDate2" name="endDate" type="text" class="form-control" />
                                                    </div>
                                                <%--</form>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="margin-top: 0px;">
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-7">
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-4 col-sm-4 col-xs-12 ">
                                            <h5 class="section-headline text-left">Withdraw History</h5>
                                        </div>
                                        <!-- <div class="col-md-1 col-sm-1 col-xs-12 "></div> -->
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="section-headline text-right">
                                                <%--<form id="form" name="form" class="form-inline">--%>
                                                    <div class="form-group">
                                                        <label for="startDate">From :</label>
                                                        <input id="startDate3" name="startDate" type="text" class="form-control" />
                                                        &nbsp;
                                                        <label for="endDate">To :</label>
                                                        <input id="endDate3" name="endDate" type="text" class="form-control" />
                                                    </div>
                                                <%--</form>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="margin-top: 0px;">
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-8">
                                    <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-4 col-sm-4 col-xs-12 ">
                                            <h5 class="section-headline text-left">Commission Withdraw History</h5>
                                        </div>
                                        <!-- <div class="col-md-1 col-sm-1 col-xs-12 "></div> -->
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="section-headline text-right">
                                                <%--<form id="form" name="form" class="form-inline">--%>
                                                    <div class="form-group">
                                                        <label for="startDate">From :</label>
                                                        <input id="startDate4" name="startDate" type="text" class="form-control" />
                                                        &nbsp;
                                                        <label for="endDate">To :</label>
                                                        <input id="endDate4" name="endDate" type="text" class="form-control" />
                                                    </div>
                                                <%--</form>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="margin-top: 0px;">
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-9">
                                   <div class="row" style="padding-left: 20px;">
                                        <div class="col-md-3 col-sm-3 col-xs-12 ">
                                            <h5 class="section-headline text-left">Betting  History</h5>
                                        </div>
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="section-headline text-right">
                                                <%--<form id="form" name="form" class="form-inline">--%>
                                                    <div class="form-group">
                                                        <label for="startDate">From :</label>
                                                        <input id="startDate5" name="startDate" type="text" class="form-control" />
                                                        &nbsp;
                                                        <label for="endDate">To :</label>
                                                        <input id="endDate5" name="endDate" type="text" class="form-control" />
                                                    </div>
                                                <%--</form>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <hr style="margin-top: 0px;">
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-10">
                                    <div class="section-headline text-left">
                                        <h5>Bonus History (All types)</h5>
                                        <hr>
                                    </div>
                                    <div>
                                        <p>No Records Found.</p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="p-view-11">
                                    <div class="section-headline text-left">
                                        <h5>Change My Password</h5>
                                        <hr>
                                    </div>
                                    <div class="row tab4summary1" style="padding-left: 20px;" >
                                        <div class="col-md-2 col-sm-2 col-xs-12 "></div>
                                        <div class="col-md-8 col-sm-8 col-xs-12 ">
                                            <div class="">
                                                <label>My Old Password</label>
                                                <input type="text" id="" class="form-control textfield" required>
                                                 <br>
                                                <label>New Password</label>
                                                <input type="text" id="" class="form-control textfield" required>
                                                <%--<span style="line-height: 0px;font-size: 12px;">Password requiement: Minimum 1 letter,Minmum 1number and Minmum 6 characters long</span>--%>
                                               
                                                <label>Confirm New Password</label>
                                                <input type="text" id="" class="form-control textfield" required>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-12 "></div>
                                    </div>
                                    <br>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>
                                        <div class="col-md-10 col-sm-10 col-xs-12 ">
                                            <div class="row">
                                                <div class="col-md-6 col-sm-6 col-xs-12 ">
                                                    <button class="btn btn-danger" style="width: 280px;">CANCEL</button>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12 ">
                                                    <button class="btn btn-primary" style="width: 280px;">SAVE</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1 col-sm-1 col-xs-12 "></div>

                                    </div>
                                    <!-- <div class="row">
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <button class="btn btn-danger btnclass" style="margin-left: 40px;width: 320px;">CANCEL</button>
                                        </div>
                                        <div class="col-md-2 col-sm-2 col-xs-12 "></div>
                                        <div class="col-md-5 col-sm-5 col-xs-12 ">
                                            <button class="btn btn-primary btnclass" style="margin-right: 40px; width: 300px;">SAVE</button>
                                        </div>
                                    </div> -->
                                </div>
                                <div class="tab-pane" id="p-view-12">
                                    <div class="section-headline text-left">
                                        <h5>Genealogy</h5>
                                          <asp:Literal ID = "LevelInfo" runat = "server" /> 
                                        <hr>
                                        <%--<h6>https://www.beewin.live/index.php?refercode=1005001007</h6>--%>
                                    </div>
                                   
                                </div>
                                <%--<div class="tab-pane" id="p-view-13">
                                   Logout
                                </div>--%>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
        <!-- End games end -->
</asp:Content>


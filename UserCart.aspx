<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserCart.aspx.cs" Inherits="UserCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
      <style>
            table input[type="text"],input[type="button"]
            {
              color: black;
              border-radius: 5px;
              border: 1px solid black;
            }
            table input[type="text"]
            {
             
              text-align: center;
            }
        </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Start Cart area -->

          <div class="fix area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                           
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="deposite-content1">
                            <div class="diposite-box1">
                                <div class="deposite-table1">
                                   <table>
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Description</th>
                                                <th>Availability</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
                                               <%-- <th></th>--%>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="cart_item">
                                                <td>
                                                    <img src="img/icon/m.png" alt=""/>
                                                    <%--<a href="#"><img src="img/icon/m.png" alt=""></a>--%>
                                                </td>
                                                <td>
                                                    <span id="Description">Lottery</span>
                                                    <%--<a href="#">EmI-76076</a>--%>
                                                </td>
                                                <td>
                                                    <span id="Availability" runat="server"></span>
                                                    <%--<button class="btn btn-success">IN STOCK</button>--%>
                                                </td>

                                                <td>
                                                   <span id="ProductPrice" runat="server" class="amount"></span>
                                                </td>

                                                <td>
                                                    <div class="quantity clearfix">
                                                        <input type="button" value="-" class="minus" field="quantity">
                                                        <input  type="text" id="quantity" name="quantity" value="1" class="qty" readonly="readonly" />
                                                        <input type="button" value="+" class="plus" field="quantity">
                                                    </div>
                                                </td>

                                                <td >
                                                    <span id="total" runat="server" class="total_amount"></span>
                                                </td>
                                               <%-- <td>
                                                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                                                </td>--%>
                                            </tr>   
                                            <tr>
                                                <td colspan="5" style="text-align: center;">TOTAL</td>
                                                <td colspan="2">
                                                    
                                                </td>
                                            </tr>
                                           
                                            
                                            <tr>
                                                <td colspan="5" style="text-align: center;">TAX</td>
                                                <td colspan="2"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" style="text-align: center;">TOTAL WithTax</td>
                                                <td colspan="2">
                                                    <span id="TotalPriceWithTax" runat="server">200</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                       <tfoot>
                                           
                                            <tr>
                                                <td colspan="5">
                                                    <asp:Button ID="BtnCon" runat="server" Text="Continue Shopping" CssClass="s-menu"  />
                                                    <%--<a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>--%>

                                                </td>
                                                
                                                
                                                <td colspan=""> <asp:Button ID="BtnCheckout" runat="server" Text="Checkout" CssClass="s-menu"  />
                                                    <%--<a href="#" class="btn btn-success">Checkout <i class="fa fa-angle-right"></i></a>--%></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <script>
        

        function calculate(obj) {
            var price = parseFloat($(obj).parent().parent().parent().find('.amount').text()) || 0;
            var quantity = parseInt($(obj).parent().find('.qty').val());
            var total = price * quantity;
            $(obj).parent().parent().parent().find('.total_amount').text(total);            
            var TotalPriceWithTax = document.getElementById("ContentPlaceHolder1_TotalPriceWithTax");
            TotalPriceWithTax.textContent = total;
          
            

        }

        function changeQuantity(num, obj) {
            //$("#quantity").val( parseInt($("#quantity").val())+num);
            $(obj).parent().find('.qty').val(parseInt($(obj).parent().find('.qty').val()) + num);
        }

        $().ready(function () {
            

            $(".minus").click(function () {
                if ($("#quantity").val() > 1)
                {                   
                    changeQuantity(-1, this);
                    calculate(this);
                }
               
            });
            $(".plus").click(function () {

                var Availability = parseInt(document.getElementById("ContentPlaceHolder1_Availability").innerText);                                

                if ($("#quantity").val() <  Availability && $("#quantity").val() < 3) {
                    changeQuantity(1, this);
                    calculate(this);

                }
                
              
                

            });

            //$("#quantity").keyup(function(e){
            //$(".qty").keyup(function (e) {
            //    if (e.keyCode == 38) changeQuantity(1, this);
            //    if (e.keyCode == 40) changeQuantity(-1, this);
            //    calculate(this);
            //});

        });

    </script>
        <!-- End Cart area -->
</asp:Content>


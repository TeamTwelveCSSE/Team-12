<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="HospitalManagementSystem.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>

    <link href="Resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
	<link href="Resources/css/style.css" rel='stylesheet' type='text/css' />
   	<!-- Custom Theme files -->	
   	<!-- webfonts -->
   	<link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
   	<!-- webfonts -->
</head>
<body>
    <!-- container -->
        <!-- header -->
        <div class="header header-border">
            <div class="container">
                <!-- logo -->
                <div class="logo">
                    <a href="Main.aspx"><img style="margin-left:0" src="Resources/images/logo.png" title="medicalpluse" /></a>
                </div>
                <!-- logo -->
                <!-- top-nav -->
			    <div class="top-nav">
                    <span class="menu"> </span>
                    <!-- page heading -->
			    </div>
                <!-- top-nav -->
            </div>
        </div>
        <!-- /header -->
        <form id="main" runat="server" method="post">
            <main id="content">
                <div class="container">
                    <div class="row">
                         <ul class="nav nav-tabs">
                            <li><a data-toggle="tab" href="AddItem.aspx">Add Item</a></li>
                            <li><a data-toggle="tab" href="AddSupplier.aspx">Add Supplier</a></li>
                            <li><a data-toggle="tab" href="Issue.aspx">Isuue</a></li>
                            <li  class="active" id="#Order"><a data-toggle="tab" href="Order.aspx">Order</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="Order" class="tab-pane fade in active">
                                <h3>Order</h3>
                                <div class="container">

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Item Id</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtItemOrderId" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Supplier Id</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtSupplierOrderId" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Order Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtOrderName" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Quantity Ordered</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtQtyOrder" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Ordered Date</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtOrderDate" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </main>
        </form>

        <!-- footer -->
        <div style="height: 642px; width: 759px; margin-right: 540px">
            <div class="footer">

            </div>
        </div>

</body>
</html>


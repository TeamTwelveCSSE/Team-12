<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="HospitalManagementSystem.AddItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Item</title>

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
                            <li class="active"><a data-toggle="tab" href="AddItem.aspx" id="#AddItem">Add Item</a></li>
                            <li><a data-toggle="tab" href="AddSupplier.aspx">Add Supplier</a></li>
                            <li><a data-toggle="tab" href="Issue.aspx">Isuue</a></li>
                            <li><a data-toggle="tab" href="Order.aspx">Order</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="AddItem" class="tab-pane fade in active">
                                <h3>Add Items</h3>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Category</div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="category" runat="server" class="form-control" AutoPostBack="false" Visible="True">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Equipment</asp:ListItem>
                                                    <asp:ListItem>Other Materials</asp:ListItem>
                                                    <asp:ListItem>Medicine</asp:ListItem>
                                                </asp:DropDownList>
                                            </div> 
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Item Code</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtItemCode" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Item Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtItemName" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Quantity</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtQty" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Re Order Level</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtReOrder" runat="server" class="form-control" TextMode="Number" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Rack No</div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="RackNo" runat="server" class="form-control" AutoPostBack="false" Visible="True">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Rack 01</asp:ListItem>
                                                    <asp:ListItem>Rack 02</asp:ListItem>
                                                    <asp:ListItem>Rack 03</asp:ListItem>
                                                    <asp:ListItem>Rack 04</asp:ListItem>
                                                    <asp:ListItem>Rack 05</asp:ListItem>
                                                </asp:DropDownList>
                                            </div> 
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Description</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtDescriptionItem" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Date</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtdate" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div>
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


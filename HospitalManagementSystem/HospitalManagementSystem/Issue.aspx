<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issue.aspx.cs" Inherits="HospitalManagementSystem.Issue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Issue</title>

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
                            <li  class="active"><a data-toggle="tab" href="Issue.aspx">Isuue</a></li>
                            <li><a data-toggle="tab" href="Order.aspx">Order</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="Order" class="tab-pane fade in active">
                                <h3>Issue Item</h3>
                                <div class="container">

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Item Id</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtItemIssueId" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Quantity Issued</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtQtyIssue" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Location</div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="location" runat="server" class="form-control" AutoPostBack="false" Visible="True">
                                                    <asp:ListItem>Add Location</asp:ListItem>
                                                    <asp:ListItem>Ward_01</asp:ListItem>
                                                    <asp:ListItem>Ward_02</asp:ListItem>
                                                    <asp:ListItem>Ward_03</asp:ListItem>
                                                    <asp:ListItem>Ward_04</asp:ListItem>
                                                    <asp:ListItem>Ward_05</asp:ListItem>
                                                    <asp:ListItem>Lab</asp:ListItem>
                                                    <asp:ListItem>Theatre</asp:ListItem>
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
                                            <div class="col-md-4">Issue Date</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtIssueDate" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div>
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


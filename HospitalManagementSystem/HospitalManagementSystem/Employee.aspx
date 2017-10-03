﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="HospitalManagementSystem.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Employee</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="Resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="Resources/scripts/validation.js" type="text/javascript"></script>
    <script src="Resources/scripts/DatePicker.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <!-- Custom Theme files -->
	<link href="Resources/css/style.css" rel='stylesheet' type='text/css' />
   	<!-- Custom Theme files -->	
   	<!-- webfonts -->
   	<link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
   	<!-- webfonts -->
	
	<script type="text/javascript">
        $(document).ready(function () {
            $(function () {
                $("#txtDOB").datepicker();
            });
        });
    </script>
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
                            <li class="active"><a data-toggle="tab" href="#Register">Employee Register</a></li>
                            <li><a data-toggle="tab" href="#Salary">Employee Salary</a></li>
                            <li><a data-toggle="tab" href="#Attendance">Employee Attendance</a></li>
                            <li><a data-toggle="tab" href="#Absence">Employee Absence</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="Register" class="tab-pane fade in active">
                                <h3>Employee Register</h3>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee Type</div>
                                            <div class="col-md-8">
                                                <asp:DropDownList ID="lstEmpType" runat="server" class="form-control" AutoPostBack="false" Visible="True" onChange="VisibleTextBox()">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Attendant</asp:ListItem>
                                                    <asp:ListItem>Lab Assistance</asp:ListItem>
                                                    <asp:ListItem>Nurse</asp:ListItem>
                                                    <asp:ListItem>OPD Doctor</asp:ListItem>
                                                    <asp:ListItem>Visiting Doctor</asp:ListItem>
                                                    <asp:ListItem>Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </div> 
                                        </div>
                                        <div class="col-md-3">
											<div id="txtOther" style="display:none"><asp:TextBox ID="txtTitle" runat="server" class="form-control" Visible="true"></asp:TextBox></div> 
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee ID</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtEmpIDRegister" runat="server" class="form-control" ReadOnly="true"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">

                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">First Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtFirstName" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">

                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Last Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtLastName" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Address</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtAddress" runat="server" class="form-control" TextMode="MultiLine" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">NIC</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtNIC" runat="server" class="form-control"  MaxLength="10"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Date Of Birth</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtDOB" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Gender</div>
                                            <div class="col-md-4">
                                                <asp:RadioButton ID="radioBtnMale" runat="server" GroupName="gender" Text="Male"></asp:RadioButton>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:RadioButton ID="radioBtnFemale" runat="server" GroupName="gender" Text="Female"></asp:RadioButton>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">E-Mail</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtMail" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Contact</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtContact" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Basic Salary</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtSalary" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">SLMC Reg No</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtSLMCNo" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                            <div class="col-md-6">
                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>                                                
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            View Employee Details
                                            <a data-toggle="collapse" data-target="#emp_details"><img src="Resources/images/downarrow.png"/></a>
                                            <div id="emp_details" class="collapse">
                                                <asp:GridView ID="GridEmp" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"><AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                                                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                                                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                                                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="Salary" class="tab-pane fade">
                                <h3>Employee Salary</h3>
                                <div class="container">
                                     <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee ID</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtEmpIDPay" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtPayEmpName" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee Type</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtPayEmpType" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">EPF (Employee)</div>
                                            <div class="col-md-3"><asp:TextBox ID="txtEmpEPF" runat="server" class="form-control" ></asp:TextBox></div>
                                            <div class="col-md-2">EPF (Company)</div>
                                            <div class="col-md-3"><asp:TextBox ID="txtCompanyEmp" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">ETF</div>
                                            <div class="col-md-3"><asp:TextBox ID="txtETF" runat="server" class="form-control" ></asp:TextBox></div>
                                            <div class="col-md-2">Extra Payment</div>
                                            <div class="col-md-3"><asp:TextBox ID="txtExtraPay" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Tax Amount</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtTax" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Working Bonus</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtBonus" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Basic Salary (Rs.)</div>
                                            <div class="col-md-8"><asp:Label ID="lblBasic" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Net Salary (Rs.)</div>
                                            <div class="col-md-8"><asp:Label ID="lblNet" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                            <div class="col-md-6">
                                                <asp:Button ID="btnSCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>                                                
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Button ID="btnSSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row top-buffer">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="Attendance" class="tab-pane fade">
                                <h3>Employee Attendance</h3>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee ID</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtEmpIdAttendance" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee Name</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtEmpNameAttendance" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee Type</div>
                                            <div class="col-md-8"><asp:TextBox ID="txtEmpTypeAttendance" runat="server" class="form-control" ></asp:TextBox></div>
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                     </div>
                                </div>
                            </div>

                            <div id="Absence" class="tab-pane fade">
                                <h3>Employee Absence</h3>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-4">Employee ID</div>
                                            <div class="col-md-8"><asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox></div>
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

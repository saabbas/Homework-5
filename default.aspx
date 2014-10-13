<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loan Calculator</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <span class="head">Sean&#39;s Mortgage Calculator</span>
        
        <br /><br />
     
        <span class="head1">Loan Amount:</span><span class="char">*</span><asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_LoanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="rfv_loan">Please enter a loan amount.</asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        <span class="head1">Annual Interest %:</span><span class="char">*</span> <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_AnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="rfv_AnnualInterest">Please enter a annual interest rate.</asp:RequiredFieldValidator>
        
        <asp:RangeValidator ID="rv_AnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter an annual interest rate between 0-100%." MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>

        <br /><br /> 

        <span class="head1">Loan Term (Yrs):</span><span class="char">*</span> <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="RequiredFieldValidator">Please enter a loan length.</asp:RequiredFieldValidator>

        <br /><br />

         &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;<span class="char">*</span> - Indicates a required field. The loan calculator will not function unless all required fields are complete.
        <br /><br />        
        <span class="head1">Monthly Payment:</span> &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            <RowStyle BackColor="#00cc00" />
            <AlternatingRowStyle BackColor="#FF7400" />
            <HeaderStyle BackColor="#1240AB" ForeColor="White" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
            <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" Width="400px" />
        </asp:GridView>

        </div>
    </form>
</body>
</html>

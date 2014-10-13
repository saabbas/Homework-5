<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Mike's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_LoanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="rfv_loan">Please enter a loan amount.</asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_AnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="rfv_AnnualInterest">Please enter a annual interest rate.</asp:RequiredFieldValidator>
        
        <asp:RangeValidator ID="rv_AnnualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter an annual interest rate between 0-100%." MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>

        <br /><br /> 

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>

         &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="RequiredFieldValidator">Please enter a loan length.</asp:RequiredFieldValidator>

        <br /><br />

         &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>

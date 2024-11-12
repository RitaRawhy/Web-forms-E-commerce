<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            margin-bottom: 1px;
            margin-left: 183px;
            margin-right: 0px;
        }
        .auto-style6 {
            margin-left: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class ="type"> Shopping Cart </div>
    <p>      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" CssClass="auto-style5" Height="16px" 
            OnRowDeleting="GridView1_RowDeleting"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            OnRowEditing="GridView1_RowEditing"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" 
            OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="proId" HeaderText="Product ID" ReadOnly="True" />
                <asp:BoundField DataField="proName" HeaderText="Product Name" ReadOnly="True" />

                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("proimage") %>' Height="128px" Width="136px" />
                    </ItemTemplate>
                    <ItemStyle Height="20px" Width="20px" />
                </asp:TemplateField>

                <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" />

                <asp:CommandField HeaderText="x" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" DeleteText="    Delete" >

                <ControlStyle ForeColor="Red" />
                </asp:CommandField>

            </Columns>

            <EmptyDataTemplate>
                 <style>
            h1{
                text-align: center; margin-top:100px; margin-bottom: 100px;
            }
        </style>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your shopping cart is empty, return to
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx" Text="Home Page"
                Font-Bold="False" Font-Overline="False" Font-Underline="True" ForeColor="Red"></asp:HyperLink>
                 &nbsp;and add &nbsp;&nbsp; </h2>
              
                 <h2>product to your cart .</h2>
              
                 <p>
                     &nbsp;</p>
              
            </EmptyDataTemplate>

            <FooterStyle BackColor="#CCCCCC" /> 
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
   
        <asp:Table ID="Table1" runat="server" Height="34px" Width="790px" CssClass="auto-style6">
            <asp:TableRow runat="server"></asp:TableRow>
            <asp:TableRow runat="server" BackColor="Black" ForeColor="White">
                <asp:TableCell runat="server"> Total of order : <asp:Label runat="server" ID="lbltotal"></asp:Label>  </asp:TableCell>
            </asp:TableRow>
        </asp:Table>


   
        
           
            <p>
        
                &nbsp;</asp:Content>


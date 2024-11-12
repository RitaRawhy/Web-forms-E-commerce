<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WishList.aspx.cs" Inherits="WishList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 305px;
            height: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class ="type"> Wish List </div>
    <p>      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="grd_wishlist" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style5" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="proID" HeaderText="Product ID" ReadOnly="True" />
        <asp:BoundField DataField="proName" HeaderText="Product Name" ReadOnly="True" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("proimage") %>' Height="128px" Width="136px"/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="price" HeaderText="Price" ReadOnly="True" />
        <asp:HyperLinkField DataNavigateUrlFields="proID" DataNavigateUrlFormatString="product_details.aspx?id={0}" Text="Show Details">
        <ControlStyle Font-Bold="True" Font-Underline="True" ForeColor="Red" />
        </asp:HyperLinkField>
        <asp:CommandField HeaderText="X" ShowDeleteButton="True">
        <ControlStyle ForeColor="Red" />
        <FooterStyle Font-Underline="True" ForeColor="Red" />
        </asp:CommandField>
    </Columns>

        <EmptyDataTemplate>
                 <style>
            h1{
                text-align: center; margin-top:100px; margin-bottom: 100px;
            }
        </style>
        <h2>Your wish list is empty, return to 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx" Text="Home Page" Font-Bold="False" Font-Overline="False" Font-Underline="True" ForeColor="Red"></asp:HyperLink>
                 &nbsp;</h2>
              
                 <h2>and add product to your list .</h2>
              
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
        <p>      
            &nbsp;<br />
</asp:Content>


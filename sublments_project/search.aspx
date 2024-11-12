
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
            
<asp:ListView ID="Datalist1" runat="server"
        DataSourceID="SqlDataSource1"
        DataKeyField="product_id"
        RepeatColumns="3" RepeatDirection="Horizontal" >

        <ItemTemplate>
            
             <button  class="bubestseller" type="button">
             <div  class="bestseller">
                      
                <asp:HyperLink runat="server" ID="hyperlink1" 
                    NavigateUrl='<%# "product_details.aspx?id=" + Eval("product_id").ToString() %>' >

        <asp:Image ID="Image1" runat="server" ImageUrl ='<%# Eval("pimage")%>'  />

                 </asp:HyperLink>  

                 <span class="tag1">Best Seller</span>
           <h1><asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name")%>' /></h1>        
            <h3>price:<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price")%>' /> EGP</h3>
           
                 </div>
                 </button>

        </ItemTemplate>
    <EmptyDataTemplate>
        <style>
            h1{
                text-align: center; margin-top:100px; margin-bottom: 100px;
            }
        </style>
        <h1><asp:Label runat="server" Text="Item doesn't exist" ></asp:Label></h1>
    </EmptyDataTemplate>
    </asp:ListView>           
 

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" SelectCommand="SELECT [product_id], [price], [pimage],[product_name] FROM [products] WHERE ([product_name] LIKE '%' + @product_name + '%') or ([category  ] LIKE '%' + @product_name + '%') ">
        <SelectParameters>
            <asp:QueryStringParameter Name="product_name" QueryStringField="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
 

</asp:Content>


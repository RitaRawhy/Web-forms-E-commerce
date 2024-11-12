<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Weight-Loss.aspx.cs" Inherits="Weight_Loss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class ="type"><h3>you will have the best cut ever and agreat pysique </h3> </div>

     <asp:DataList ID="Datalist1" runat="server"
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

           <h1><asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name")%>' /></h1>        
            <h3>price:<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price")%>' /> EGP</h3>
           
                 </div>
                 </button>             
        </ItemTemplate>
    </asp:DataList>
        
    <asp:SqlDataSource ID="SqlDataSource1"   runat="server" 
        ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" 
        SelectCommand="SELECT [product_name], [price] , [pimage] , [product_id] FROM [products] WHERE category = 'WEIGHT LOSS'" >      
    </asp:SqlDataSource>


</asp:Content>


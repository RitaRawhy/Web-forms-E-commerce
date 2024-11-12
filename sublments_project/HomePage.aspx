<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
  <div class ="type"> Best seller </div>

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

                 <span class="tag1">Best Seller</span>
           <h1><asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name")%>' /></h1>        
            <h3>price:<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price")%>' /> EGP</h3>
           
                 </div>
                 </button>             
        </ItemTemplate>
    </asp:DataList>
        
    <asp:SqlDataSource ID="SqlDataSource1"   runat="server" 
        ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" 
        SelectCommand="SELECT [product_name], [price] , [pimage] , [product_id] FROM [products] WHERE product_id < 80000 " >      
    </asp:SqlDataSource>




  <div class ="type"> Accessories </div>

     <asp:DataList ID="Datalist3" runat="server"
        DataSourceID="SqlDataSource3"
        DataKeyField="product_id"
        RepeatColumns="3" RepeatDirection="Horizontal" >

        <ItemTemplate>
            
             <button  class="bubestseller" type="button">
             <div  class="bestseller">
                      
                <asp:HyperLink runat="server" ID="hyperlink2" 
                    NavigateUrl='<%# "product_details.aspx?id=" + Eval("product_id").ToString() %>' >

        <asp:Image ID="Image2" runat="server" ImageUrl ='<%# Eval("pimage")%>'  />

                 </asp:HyperLink>  

           <h1><asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name")%>' /></h1>        
            <h3>price:<asp:Label ID="Label2" runat="server" Text='<%# Eval("price")%>' /> EGP</h3>
           
                 </div>
                 </button>             
        </ItemTemplate>
    </asp:DataList>
        
    <asp:SqlDataSource ID="SqlDataSource3"   runat="server" 
        ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" 
        SelectCommand="SELECT [product_name], [price] , [pimage] , [product_id] FROM [products] WHERE product_id > 121090" >      
    </asp:SqlDataSource>




  <div class ="type"> Snacks </div>

  <asp:DataList ID="Datalist2" runat="server"
        DataSourceID="SqlDataSource2"
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
        
    <asp:SqlDataSource ID="SqlDataSource2"   runat="server" 
        ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" 
        SelectCommand="SELECT [product_name], [price] , [pimage] , [product_id] FROM [products] WHERE category = 'SNACKS'" >      
    </asp:SqlDataSource>



</asp:Content>


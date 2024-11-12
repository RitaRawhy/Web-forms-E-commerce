<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="product_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="productstyle.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-top: 7px;
        }


    </style>
   
</head>
<body>

  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <form id="form1" runat="server">
        <div class="icon_bar">
    <p>Nitro Shop</p> 
        <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
        <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
        <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
        <a href="WishList.aspx"><ion-icon name="heart-outline"></ion-icon></a>
        <a href="cart.aspx"><ion-icon name="cart-outline"></ion-icon></a>
        <a href="#"><ion-icon name="id-card"></ion-icon> My Account</a>
        <a href="#"><ion-icon name="location"></ion-icon>Our Stores</a>
      </div>


    <div class="pass">
        <p>MainPage  >  BestSeller  >  <span class="SPAN"></span><asp:Label runat="server" ID="Title" ForeColor="#ff0000"></asp:Label> </p>
    </div>
  <!-- slide show -->

    <div class="slideshow-container">
<div class="mySlides fade">
  <asp:image ID="pImage" runat="server"  width="500px" height="500px"  />
</div>
      <div class="mySlides fade">
  <asp:image ID="D_Image" runat="server"  width="500px" height="500px" />
</div>
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
<div class="info">
  <h1 style="font-size:45px"><asp:Label runat="server" Id="name_d"></asp:Label></h1>
  <a  id="iconrate1" onclick="rate1()" style="color:#ccc"><ion-icon name="star"></ion-icon></a>
  <a id="iconrate2" onclick="rate2()" style="color:#ccc"><ion-icon name="star"></ion-icon></a>
  <a id="iconrate3" onclick="rate3()" style="color:#ccc"><ion-icon name="star"></ion-icon></a>
  <a  id="iconrate4" onclick="rate4()" style="color:#ccc"><ion-icon name="star"></ion-icon></a>
  <a  id="iconrate5" onclick="rate5()" style="color:#ccc"><ion-icon name="star"></ion-icon></a>
  <br>
  <h1><asp:Label runat="server" ID="price_label"></asp:Label> EGP</h1>
  <p>AVAILABILITY: <span style="font-weight:bold">IN STOCK</span></p>
  <p>SKU: <span style="font-weight:bold"></span><asp:Label runat="server" Id="ID_label"></asp:Label></p>
  <p>CATEGORIES: <span style="font-weight:bold"> <asp:Label runat="server" ID="c_label"></asp:Label> , SPECIAL ITEMS</span></p>
  <hr>


  <div class="quantity">

      <asp:DropDownList runat="server" ID="DropDownList1" Font-Size="20 px">
           <asp:ListItem >1</asp:ListItem>  
            <asp:ListItem>2</asp:ListItem>  
            <asp:ListItem>3</asp:ListItem>  
            <asp:ListItem>4</asp:ListItem>  
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>  
            <asp:ListItem>7</asp:ListItem>  
            <asp:ListItem>8</asp:ListItem>  
            <asp:ListItem>9</asp:ListItem>  
            <asp:ListItem>10</asp:ListItem> 
       
      </asp:DropDownList>
  </div>


    
    <br />
    <asp:Button runat="server" ID="cart_B" Text="ADD TO CART" OnClick="cart_Click"  CssClass="auto-style1" Height="53px"></asp:Button>




  <br>
  <hr>
  <div class="ICONS">
  <script type="text/javascript">
      function disableClick(elem) {
          elem.disabled = true;
      }
    </script>
      <asp:ImageButton runat="server" ID="heart" OnClick="wishlist_Click" ImageUrl="~/heart.png" Height="59px" Width="44px"></asp:ImageButton>
<asp:Button runat="server" ID="wish_B" OnClick="wishlist_Click" Text="ADD TO WISH LIST" BackColor="White" BorderColor="White" Font-Bold="True" ForeColor="Black" Width="284px"></asp:Button>
  <a href="#" style=" color:#0b9cda"><ion-icon name="logo-linkedin"></ion-icon></a>
  <a href="#" style="color:#ff4242"><ion-icon name="logo-google"></ion-icon></a>
  <a href="#" style="color:#ff4242"><ion-icon name="mail"></ion-icon></a>
  <a href="#" style="color:#58c1ee"><ion-icon name="logo-twitter"></ion-icon></a>
  </div>
  <br>
  <div class="BUY">
     <a id="PAY">Buy </a>
  </div>
</div>
    
<div class="TAB">
  <ul class="tabs">
  <li class="active" data-cont=".one"><h5> DESCRIPTION</h5></li>
  <li data-cont=".two"><h5>ADDITIONAL INFORMATION</h5></li>
    <li data-cont=".three"><h5>REVIEWS</h5></li>
</ul>
<div class="content">
  <div class="one">
    <ul>
        <asp:Label runat="server" ID="description_label"></asp:Label>
    </ul>
  </div>
  <div class="two">
    <table id="INFO">
  <tr>
    <th>Origin</th>
     <td><asp:Label runat="server" ID="origin_label" ForeColor="#ff0000" ></asp:Label></td> 
  </tr>
  <tr>
    <th>Brand</th>
    <td><asp:Label runat="server" ID="brand_label" ForeColor="#ff0000" ></asp:Label></td>  
  </tr>
   <tr>
    <th>Flavor</th>
      <td><asp:Label runat="server" ID="falvor_label" ForeColor="#ff0000" ></asp:Label></td> 
  </tr>
      <tr>
    <th>Formation</th>
        <td><asp:Label runat="server" ID="format_label" ForeColor="#ff0000" ></asp:Label></td>  
  </tr>
      <tr>
    <th>Servings</th>
         <td><asp:Label runat="server" ID="serving_label" ForeColor="#ff0000" ></asp:Label></td> 
  </tr>
      <tr>
    <th>Weight</th>
         <td><asp:Label runat="server" ID="weight_label" ForeColor="#ff0000" ></asp:Label></td> 
  
  </tr>
      <tr>
    <th>Expire date</th>
        <td><asp:Label runat="server" ID="expire_label" ForeColor="#ff0000" ></asp:Label></td>  
  </tr>
    </table>
  </div>
  <div class="three">
    <p style="font-size: 18px">Your rating</p>
    <a  id="Iconrate1" onclick="Rate1()" style="color:#8b8989" ><ion-icon name="star"></ion-icon></a>
  <a  id="Iconrate2" onclick="Rate2()" style="color:#8b8989"><ion-icon name="star"></ion-icon></a>
  <a  id="Iconrate3" onclick="Rate3()" style="color:#8b8989"><ion-icon name="star"></ion-icon></a>
  <a  id="Iconrate4" onclick="Rate4()" style="color:#8b8989"><ion-icon name="star"></ion-icon></a>
  <a  id="Iconrate5" onclick="Rate5()" style="color:#8b8989"><ion-icon name="star"></ion-icon></a>
    <h3>Reviews</h3>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
           
            <ItemTemplate>
                
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /> :              
                <asp:Label ID="reviewLabel" runat="server" Text='<%# Eval("review") %>' />
                <br />
            </ItemTemplate>
            <EmptyDataTemplate>
                <asp:Label runat="server" Text="No reviews yet" />
            </EmptyDataTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project2ConnectionString %>" 
            SelectCommand="SELECT [name], [email], [review], [id] FROM [review] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
      </asp:SqlDataSource>
      </p>
    <hr>
    <h4>Be the first to review “  <asp:Label runat="server" ID="review_name"></asp:Label>”</h4>
                <div class="container">
                    <form action="/action_page.php">
                      <div class="row">
                            <div class="message1">
                                <label for="message">Your review</label>
                            </div>
                            <div class="col-75">
                                <asp:TextBox runat="server" ID="message" name="message" style="height:200px"></asp:TextBox>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-25">
                                <label for="name">Name</label>
                            </div>
                            <div class="col-75">
                                <asp:TextBox runat="server" type="text" ID="tname" name="name"></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-25">
                                <label for="E-mail">Email</label>
                            </div>
                            <div class="col-75">
                                <asp:TextBox runat="server" type="text" ID="temail" name="email"></asp:TextBox>
                        
                            </div>
                        </div>
                      <div class="row">
                        <label class="Container">
  <input type="checkbox" >   save my name, email, and website in this browser for the next time I comment.
</label>
                        </div>
                        <div class="row">
                            <asp:Button runat="server" Text="Save" OnClick="Unnamed1_Click" ></asp:Button>
               
                        </div>
                    </form>
                </div>
       </div>
</div>
</div>

   <div class="form-popup" id="PAYMENT">
    <h1 style="text-align:center">Payment</h1>
    <label for="phone"><b>Phone Number</b></label>
    <label for="address"><b>Address</b></label>
    <label for="productname"><b>Product Name</b></label>
    <label for="totalprice"><b>Total Price</b></label>
    <button type="button" class="btn cancel" onclick="CONFIRM()" >Confirm</button>
    <button type="button" class="btn cancel" onclick="backlogin()">Go Back</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
     <br>
    <p id="DEMO" style="font-weight:bold"></p>
  </div>


    
  <script>

    
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  
  slides[slideIndex-1].style.display = "block";  
  
}
    function rate1()
    {                  
    document.getElementById("iconrate1").style.color="red";
    }
    function rate2()
    {                  
    document.getElementById("iconrate2").style.color="red";
    }
    function rate3()
    {                  
    document.getElementById("iconrate3").style.color="red";
    }
    function rate4()
    {                  
    document.getElementById("iconrate4").style.color="red";
    }
    function rate5()
    {                  
    document.getElementById("iconrate5").style.color="red";
    }

    
    function Fav()
    {                  
    document.getElementById("fav").style.color="red";
    }

     function Rate1()
    {                  
    document.getElementById("Iconrate1").style.color="red";
    }
    function Rate2()
    {                  
    document.getElementById("Iconrate2").style.color="red";
    }
    function Rate3()
    {                  
    document.getElementById("Iconrate3").style.color="red";
    }
    function Rate4()
    {                  
    document.getElementById("Iconrate4").style.color="red";
    }
    function Rate5()
    {                  
    document.getElementById("Iconrate5").style.color="red";
    }
    
   let tabs = document.querySelectorAll(".tabs li");
let tabsArray = Array.from(tabs);
let divs = document.querySelectorAll(".content > div");
let divsArray = Array.from(divs);

// console.log(tabsArray);

tabsArray.forEach((ele) => {
  ele.addEventListener("click", function (e) {
    // console.log(ele);
    tabsArray.forEach((ele) => {
      ele.classList.remove("active");
    });
    e.currentTarget.classList.add("active");
    divsArray.forEach((div) => {
      div.style.display = "none";
    });
    // console.log(e.currentTarget.dataset.cont);
    document.querySelector(e.currentTarget.dataset.cont).style.display = "block";
  });
});
     window.onload = function() {
     var d = document.getElementById("PAY");
          d.onclick = function () {
              
          document.getElementById("PAYMENT").style.display =          "block";
         document.getElementById("main").style.opacity = 
         "0.3";
           
          }
           
          }



        function closeForm() {
  
      document.getElementById("PAYMENT").style.display =          "none";
        }

    function CONFIRM(){
    document.getElementById("DEMO").innerHTML = "The process is confirmed successfully.";
  }
  
</script>
  
    </form>
</body>
</html>

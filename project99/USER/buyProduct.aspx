<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyProduct.aspx.cs" Inherits="USER_buyProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tech2etc Ecommerce Tutorial</title>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="style.css" />
<style>
    .product_img {
        width: 100%;
        border-radius: 20px;
    }
    .select12 {
        display: block;
        padding: 5px 10px;
        margin-bottom: 10px;
    }
    .normal {
        background-color: #088178;
        color: #fff;
        font-size: 14px;
        font-weight: 600;
        padding: 15px 90px;
        border-radius: 4px;
        cursor: pointer;
        border: none;
        outline: none;
        transition: 0.2s;
    }
    
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="header">
                <a href="#">
                    <img src="img/logo.png" class="logo" alt=""></a>

                <div>
    <ul id="navbar">
        <li><a class="active" href="home_page.aspx">Home</a></li>
        <li><a href="home_page.aspx#feature">Shop</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li id="lg-bag"><a runat="server" href="login_page.aspx" id="login" style="font-size: 18px;">Login &nbsp;<i class="fa-solid fa-right-to-bracket"></i></a></li>
        
    </ul>
</div>
<div id="mobile">
    <a href="login_page.aspx"><i class="fa fa-login" style="font-size: 28px;"></i></a>
    <!-- <i><a id="bar" href="#">&#9776;</a></i> -->
    <a href="#" id="bar"><i class="fa-solid fa-list"></i></a>

</div>
            </section>
            <%--productdetails--%>
               <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
   <asp:Repeater ID="rpt1" runat="server" EnableViewState="false" OnItemCommand="rpt1_ItemCommand" >
   <ItemTemplate>
     
            <section id="prodetails" class="section-p1 ">
                <div class="single-pro-image">
                    
                    <asp:Image ID="mainimg" ImageUrl='<%#Eval("image")%>' runat="server" width="100%"/>
                </div>
                <div class="single-pro-details">
                    <h4><%#Eval("subcategory") %></h4>
                    <h2>₹<%#Eval("price")%>.00</h2>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select12">
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:TextBox ID="TextBox1" runat="server" Text="1" TextMode="Number" CssClass="no"></asp:TextBox>
                    
                    <asp:Button ID="button33" Text="Buy Now" runat="server" CssClass="normal" OnClick="buy_click" CommandName="buy" CommandArgument='<%#Eval("product_id")%>'/>
                    <h4>product details</h4>
                    <span><%#Eval("desc") %></span>
                </div>
            </section>
           </ItemTemplate>
    </asp:Repeater>
    </ContentTemplate>
</asp:UpdatePanel>

             <section id="product1" class="section-p1">
     <h2>Featured Products</h2>
     <p>Summer Collection New Morden Design </p>
     <div class="pro-container">
         <%--product--%>
         <asp:Repeater ID="Rpt2" runat="server" EnableViewState="false" OnItemCommand="Rpt2_ItemCommand">
             <ItemTemplate>
                 <div class="pro">
                     <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl='<%#Eval("image")%>' CommandArgument='<%#Eval("product_id")%>' CssClass="product_img" />

                         <div class="des">
                             <span><%#Eval("product") %></span>
                             <h4><%#Eval("price") %></h4>
                         </div>
                     </div>
             </ItemTemplate>
         </asp:Repeater>
     </div>
 </section>


        </div>
          <footer class="section-p1">
      <div class="Col">
              <img class="logo" src="img/logo.png" alt="">
              <h4>Contect</h4>
              <p><strong>Address:</strong>12 adarsh society meghraj road modasa</p>
              <p><strong>phone:</strong>(+91) 7777 785992 / (+91) 001 9999 978</p>
              <p><strong>Hours:</strong>10:00 - 06:00 , mon - sat</p>
              <div class="follow">
                      <h4>Follow Us</h4>
                      <i class="fa fa-facebook-f"></i>
                      <i class="fa fa-twitter"></i>
                      <i class="fa fa-instagram"></i>
                      <i class="fa fa-pinterest-p"></i>
                      <i class="fa fa-youtube-play"></i>
              </div>
      </div>

      <div class="col">
          <h4>About</h4>
          <a href="#">About us</a>
          <a href="#">Delivery Information</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms & Condition</a>
          <a href="#">Contact</a>
      </div>

      <div class="col">
          <h4>My Account</h4>
          <a href="#">Sign in</a>
          <a href="#">My Wishlist</a>
          <a href="#">View cart</a>
          <a href="#">Track My Order</a>
          <a href="#">Help</a>
      </div>

      <div class="col install">
          <h4>Install App</h4>
          <p>From App store or Google Play</p>
          <div class="row">
              <img src="img/pay/app.jpg" alt="">
              <img src="img/pay/play.jpg" alt="">
          </div>
          <p>Secured Payment Gateway</p>
          <img src="img/pay/pay.png" alt="">
      </div>

      <div class="copyright">
          <p><i class="fa fa-copyright"></i> 2024 , Tech2 etc - Html Css Ecommerce Template</p>
      </div>
  </footer>
    </form>
</body>
</html>

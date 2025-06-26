<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home_page.aspx.cs" Inherits="USER_home_page" %>

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
    </style>
</head>

<body>

    <form id="form1" runat="server">
        <section id="header">
            <a href="#">
                <img src="img/logo.png" class="logo" alt=""></a>

            <div>
                <ul id="navbar">
                    <li><a class="active" href="home_page.aspx">Home</a></li>
                    <li><a href="home_page.aspx#feature">Shop</a></li>
                    <li><a href="blog.aspx">Blog</a></li>
                    <li><a href="about.aspx">About</a></li>
                    <li><a href="contact.aspx">Contact</a></li>
                    <li id="lg-bag"><a runat="server" href="login_page.aspx" id="login" style="font-size: 18px;">Login &nbsp;<i class="fa-solid fa-right-to-bracket"></i></a></li>
        
                </ul>
            </div>
            <div id="mobile">
                <a href="login_page.aspx"><i class="fa fa-login" style="font-size: 28px;"></i></a>
                <!-- <i><a id="bar" href="#">&#9776;</a></i> -->
                <a href="#" id="bar"><i class="fa-solid fa-list"></i></a>

            </div>
        </section>

        <section id="hero">
            <h4>Trade-in-offer</h4>
            <h2>Super Value Deals</h2>
            <h1>On All Products</h1>
            <p>save more with coupons & up to 70% off! </p>
            <button>Shop Now</button>
        </section>

        <section id="feature" class="section-p1">
            <div class="fe-box">
                <img src="img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>
            <div class="fe-box">
                <img src="img/features/f2.png" alt="">
                <h6>Online Order</h6>
            </div>
            <div class="fe-box">
                <img src="img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>
            <div class="fe-box">
                <img src="img/features/f4.png" alt="">
                <h6>Promotion</h6>
            </div>
            <div class="fe-box">
                <img src="img/features/f5.png" alt="">
                <h6>Happy Sell</h6>
            </div>
            <div class="fe-box">
                <img src="img/features/f6.png" alt="">
                <h6>F24/7 Support</h6>
            </div>

        </section>

        <section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Summer Collection New Morden Design </p>
            <div class="pro-container">
                <%--product--%>
                <asp:Repeater ID="Rpt1" runat="server" EnableViewState="true" OnItemCommand="Rpt1_ItemCommand">
                    <ItemTemplate>
                        <div class="pro">
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl='<%#Eval("image")%>' CommandArgument='<%#Eval("product_id")%>' CssClass="product_img" />

                                <div class="des">
                                    <span ><%#Eval("brand") %></span>
                                    <h5><%#Eval("product") %></h5>
                                    <h4>₹ <%#Eval("price") %></h4>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>


        <section id="product1" class="section-p1">
            <h2>New Arrival</h2>
            <p>Summer Collection New Morden Design </p>
            <div class="pro-container">
                <asp:Repeater ID="Rpt3" runat="server" EnableViewState="true" OnItemCommand="Rpt3_ItemCommand"> 
   <ItemTemplate>
                               
                <div class="pro">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%#Eval("image")%>' CommandArgument='<%#Eval("product_id")%>' CssClass="product_img"/>
                                        
                            <div class="des">
                                <span ><%#Eval("brand") %></span>
                                <h5><%#Eval("product") %></h5>
                                <h4>₹ <%#Eval("price") %></h4>
                            </div>
                        </div>
          </ItemTemplate>
</asp:Repeater>
            </div>
        </section>
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

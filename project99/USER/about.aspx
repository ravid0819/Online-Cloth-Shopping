<%@ Page Title="" Language="C#" MasterPageFile="~/USER/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="USER_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <section id="page-header" class="about-header">
            <h2>#KnowUs</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing</p>
        </section>
        <section id="about-head" class="section-p1">
            <img src="img/about/a6.jpg" alt="">
            <div>
                <h2>Who We Are?</h2>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Illum accusantium ipsam neque earum eos obcaecati impedit. Inventore nam repudiandae temporibus magni incidunt voluptatum, ipsum quod ea quidem, rem ut suscipit.</p>

                <abbr title="">creat stunning images with as much or as little control as you like thanks to a choice of basic and creative mode.</abbr>
                <br><br>

                <marquee bgcolor="#ccc" loop="-1" scrollamount="5" width="100%" >Create stunning images with as much or as little control as you like thanks to a choice of Basic and Creative modes.</marquee>
            </div>

        </section>

        <section id="about-app" class="section-p1">
            <h1>download our <a href="">App</a> </h1>
            <div class="video">
                <video autoplay muted loop src="img/about/1.mp4"></video>
            </div>
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
                <h6> F24/7 Support</h6>
            </div>
            
        </section>

        <section id="newletter" class="section-p1 section-m1">
            <div class="newstext">
                    <h4>Singn Up For Newsletter</h4>
                    <p>Get E-mail Update about our latest shop and <span>Special offers</span></p>
            </div>
            <div class="form">
                    <input type="text" placeholder="your E-mail address">
                    <button class="normal">Sign Up</button>
            </div>
        </section>
</asp:Content>


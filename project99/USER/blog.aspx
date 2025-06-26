<%@ Page Title="" Language="C#" MasterPageFile="~/USER/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="USER_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <section id="page-header" class="blog-header">
            <h2>#Read more</h2>
            <p>Read all case studies about our products! </p>
        </section>

        <section id="blog">
            <div class="blog-box">
                <div class="blog-img">
                    <img src="img/blog/b1.jpg" alt="">
                </div>
                <div class="blog-details">
                    <h4>The Cotton-Jersey Zip-Up Hoodie</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies yr wolf chartreuse hexagon irony. godard...</p>
                    <a href="">CONTINUE READING</a>
                </div>
                <H1>13/01</H1>
            </div> <div class="blog-box">
                <div class="blog-img">
                    <img src="img/blog/b2.jpg" alt="">
                </div>
                <div class="blog-details">
                    <h4>How to style a quiff</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies yr wolf chartreuse hexagon irony. godard...</p>
                    <a href="">CONTINUE READING</a>
                </div>
                <H1>13/01</H1>
            </div> <div class="blog-box">
                <div class="blog-img">
                    <img src="img/blog/b3.jpg" alt="">
                </div>
                <div class="blog-details">
                    <h4>Must-Have Skater Girl Items </h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies yr wolf chartreuse hexagon irony. godard...</p>
                    <a href="">CONTINUE READING</a>
                </div>
                <H1>13/01</H1>
            </div> <div class="blog-box">
                <div class="blog-img">
                    <img src="img/blog/b4.jpg" alt="">
                </div>
                <div class="blog-details">
                    <h4>Runway-Inspired Trends</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies yr wolf chartreuse hexagon irony. godard...</p>
                    <a href="">CONTINUE READING</a>
                </div>
                <H1>13/01</H1>
            </div> <div class="blog-box">
                <div class="blog-img">
                    <img src="img/blog/b6.jpg" alt="">
                </div>
                <div class="blog-details">
                    <h4>AW20 Menswear Trends</h4>
                    <p>Kickstarter man braid godard coloring book. Raclette waistcoat selfies yr wolf chartreuse hexagon irony. godard...</p>
                    <a href="">CONTINUE READING</a>
                </div>
                <H1>13/01</H1>
            </div> 
        </section>

        <section id="paginetion" class="section-p1">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href=""><i class="fa fa-long-arrow-alt-right"></i></a>
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


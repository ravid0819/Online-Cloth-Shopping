<%@ Page Title="" Language="C#" MasterPageFile="~/USER/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="USER_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        
#form-details .form {
  width: 65%;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

#form-details .form input,
#form-details .form textarea{
  width: 100%;
  padding: 12px 15px;
  outline: none;
  margin-bottom: 20px;
  border: 1px solid #e1e1e1
}
#form-details .form button{
  background-color: #088178;
  color: #fff;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <section id="page-header" class="about-header">
            <h2>#Let's_talk</h2>
            <p>LEAVE A MEASSAGE, We love Hear from you!</p>
        </section>

        <section id="contact-details" class="section-p1">
            <div class="details">
                    <span>GET IN TOUCH</span>
                    <h2>visit one of our agency locations or contact us today</h2>
                    <h3>head office</h3>
                    <div>
                        <li>
                            <i class="fal fa-map"></i>
                            <p>56 Glassford Street Glasgow G1 1UL New York</p>
                        </li>
                        <li>
                            <i class="far fa-envelope"></i>
                            <p>contact@example.com</p>
                        </li>
                        <li>
                            <i class="fas fa-phone-alt"></i>
                            <p>contact@example.com</p>
                        </li>
                        <li>
                            <i class="far fa-clock"></i>
                            <p>Monday to Saturday: 9.00am to 6.00pm</p>
                        </li>
                    </div>
            </div>

            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3660.148407807219!2d73.28870027471649!3d23.455110678872916!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395df1007eead6d3%3A0x67408f134edc145f!2sM%20l%20Gandhi%20higher%20education%20society!5e0!3m2!1sen!2sin!4v1739192068032!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>

        <section id="form-details">
            <span class="form">

            <span>LEAVE A MEASSAGE</span>
            <H2>We love to hear from you</H2>
            <input type="text" placeholder="your name">
            <input type="text" placeholder="E-mail">
            <input type="text" placeholder="subject">
            <textarea name="" id="" cols="30" rows="10" placeholder="your message"></textarea>
            <button class="normal">submit</button>
            </span>

        <div class="people">
            <div>
                <img src="img/people/1.png" alt="">
                <p><span>john Doe</span>senior Marketing Manager <br> Phone: +999 777 888 22 33 <br> Email: contact@example.com</p>
            </div>
            <div>
                <img src="img/people/2.png" alt="">
                <p><span>Willian smith</span>senior Marketing Marketing Manager <br> Phone: +999 787 666 99 78 <br> Email: contact@example.com</p>
            </div>
            <div>
                <img src="img/people/3.png" alt="">
                <p><span>Emma stone</span>senior Marketing Manager <br> Phone: + 785 992 708 78 99 <br> Email: contact@example.com</p>
            </div>
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


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="address"  MasterPageFile="~/USER/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
         /** {
             margin:0;
             padding:0;
             font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
         }
         .section {
             padding:0;
         }
         .footer__copy{
             margin:10px 10px;
         }
        .form {
            width:400px;
            height:460px;
            margin:45px auto;
            border-radius:10px;
            box-shadow:0 0 6px 0;
            padding:15px;
            margin-top:100px;
        }
        .heading {
            display:flex;
            justify-content:space-between;
            height:50px;
            width:100%;
        }
        .button1 {
            height:30px;
            width:75px;
            background-color: #8492a1cc;
            border:none;
            border-radius:5px;
        }
        .textbox {
            width: 372px;
            font-size: 16px;*/
            /* margin: 10px 2px; */
            /*border-radius: 5px;
            border: none;
            background-color: #e9e9f5;
            padding: 6px 14px;
            margin: 5px 0px 12px 0px;
        }
        .button2 {
            width:372px;
            background-color:blueviolet;
            color:white;
            padding:10px 0px;
            border-radius:5px;
            border:none;
            padding: 6px 14px;
            font-size:16px;  
            margin-bottom:20px;
        }*/




</style></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

        
     

           <div class="form">
    <div class="heading">
        <h3>Shipping Address</h3>
        <asp:Button ID="Button1" runat="server" Text="Back" CssClass="button1" ForeColor="White" OnClick="Button1_Click" />
    </div>
    <hr style="margin-bottom:10px;"/>
    <div style="padding-bottom:10px;">
        <asp:TextBox ID="TextBox1" runat="server" cssClass="textbox" placeholder="Full Name"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" cssClass="textbox" placeholder="City"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" cssClass="textbox" placeholder="state"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" cssClass="textbox" placeholder="Pincode"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" cssClass="textbox" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" cssClass="textbox" placeholder="Mobile Number"></asp:TextBox>

        <asp:Button ID="Button2" runat="server" Text="Submit" cssClass="button2" OnClick="Button2_Click" />

    </div>
    </div>
        
    

    
</asp:Content>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="address"  MasterPageFile="~/USER/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Add Bootstrap CDN for styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-pzjw8f+ua7Kw1TIq0p9X1PXhPckF0au1uGqjcz5C1lNlquq3XrxJ5aKHwS5Edt0L" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }

        .form-container h3 {
            font-size: 24px;
            font-weight: 600;
        }

        .form-container .heading {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 27px;
        }

        .form-container .heading .btn-back {
            background-color: #8492a1;
            border-radius: 5px;
            color: white;
            padding: 8px 15px;
            border: none;
            margin-left:100px;
            width : 100px;
        }

        .form-container .form-group {
            margin-bottom: 15px;
        }

        .form-container input,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            margin-top: 8px;
        }

        .form-container .btn-submit {
            background-color: blueviolet;
            color: white;
            border-radius: 5px;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: none;
        }

        .form-container hr {
            margin: 20px 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <div class="heading">
            <h3>Shipping Address</h3>
            <asp:Button ID="Button1" runat="server" Text="Back" CssClass="btn-back" ForeColor="White" OnClick="Button1_Click" />
        </div>
        <hr />

        <div class="form">
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Pincode"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn-submit" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
</asp:Content>

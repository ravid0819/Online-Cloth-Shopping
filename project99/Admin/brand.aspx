<%@ Page Language="C#"  MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="brand.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <style>
    .whitetext {
        color:aliceblue;
    }
    .auto-style1 {
        color: aliceblue;
        text-align: center;
        height: 40px;
    }
    .auto-style2 {
        text-align: center;
        color:aliceblue;
        line-height:10px;
    }
    .auto-style3 {
        text-align:left;
        color:aliceblue;
        margin-left:5%;
        font-size:12px;
    }
    .auto-style4 {
        width: 95%;
    }
    .content{
        width:100vw;
        height:675px;
        background-color:azure;
        float:left;
    }
    .content{
        padding-inline:10px;
    }
    .cat{
        width: 94vw;
    }
    .cathead{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .cathead h1{
        font-size: 1.5em;
        color: grey;
    }
    .cathead a{
        padding: 5px 15px;
        border: 0px;
        background-color: cornflowerblue;
        border-radius: 5px;
        font-size: 1rem;
        color: white;
        text-decoration:none;
    }

    .cats{
        border: 1px solid rgb(193, 191, 191);
        border-radius: 5px;
        width:94vw;
    }
    .cats .head{
        width:calc(100% - 40px);
        background-color: whitesmoke;
        padding: 15px 20px;
        /* border: 1px solid rgb(193, 191, 191);
        border-top-left-radius: 5px;
        border-top-right-radius: 5px; */
        border-bottom: 1px solid rgb(193, 191, 191);

    }
    .cats .head{
        font-size: 1.3rem;
        color: grey;
        
    }
    .input{
        padding: 15px 20px;
        width: 94vw;
    }
    
    .cats div p{
        font-size: 1.2rem;
        color: rgb(108, 108, 108);
        margin:15px 0px;
    }

    .cats div input[type="text"]{
        width: 93%;
        font-size: 1rem;
        border-color: rgb(193, 191, 191);
        border-radius: 5px;
        padding: 8px 10px;
    }
    .cats div select{
        width: 95.5%;
        padding: 8px 10px;
        border-color: rgb(193, 191, 191);
        border-radius: 5px;
        font-size: 1rem;
        color: rgb(108, 108, 108);
    }
    .btn-section{
        display: flex;
        background-color: whitesmoke;
        justify-content: center;
        padding: 30px 0;
        align-items: center;
        gap: 10px;
        width: 94vw;
        border-top: 2px solid rgb(217, 216, 216);
    }
    .button{
        padding: 10px 10px;
        background-color: cornflowerblue;
        border:0 ;
        border-radius: 5px;
        color: white;
        font-size: 1.3rem;
        letter-spacing: 1px;
    }
    .red{
        background-color: red;
    }
    .select{
        padding-bottom: 3rem;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="main">

             <section class="cat">
     <div class="cathead">
         <h1>Add Brand</h1>
         <a href="brandList.aspx">Back</a>
     </div>
     <div class="cats">
         <div class="head">Add Brand</div>
         <div class="input"><p>Brand</p>
             <input type="text" runat="server" id="TextBox1"/>
         </div>
         <div class="input select"><p>Status</p>

             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Selected="True">Active</asp:ListItem>
                 <asp:ListItem>Deactive</asp:ListItem>
             </asp:DropDownList>
         </div>
         <div class="btn-section">
             <asp:Button class="button" runat="server"  Text="Save" OnClick="save" />
             <asp:Button class="button red" runat="server"  Text="Cancel" />
        </div>
     </div>
 </section>
         </div>

    
</asp:Content>
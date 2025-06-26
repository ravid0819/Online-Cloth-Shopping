<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Admin/MasterPage.master"   CodeFile="subCategoryList.aspx.cs" Inherits="subCategoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <style>
       .main{
    display:flex;
    
    background-color:cornflowerblue;
}
      
.leftbar
{
    width:20vw;
    height:675px;
    background-color:cornflowerblue;
    float:left;
}
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
    width:95vw;
    height:675px;
    background-color:azure;
    float:left;
}
.content{
    padding-inline:10px;
}
.searchBar{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.search{
     width:30vw;
     display:flex;
     gap:0px;
     height:40px;
}
.dp{
    display:flex;
    gap:5px;
    margin-right:50px;
}
.dp span{
    font-size:1rem;
}
.dp img{
    height:20px;
    width:20px;
    border-radius:50%;
}


.search input{
    width:100%;
    border:0;
    background-color:floralwhite;
    padding:10px;
    border-top-left-radius:5px;
    border-bottom-left-radius:5px;
}
.search button{
    background-color:cornflowerblue;
    border:0;
    border-top-right-radius:5px;
    font-size:1rem;
    color:white;
    border-bottom-right-radius:5px;
}

     .cat{
      width: 85vw;
      margin:auto;
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
      text-decoration:none;
      font-size: 1rem;
      color: white;   
  }

  .cats{
      width:85vw;
        margin:auto;
      border:2px solid;
      border-color:rgb(193, 191, 191);
      border-radius:5px;
        
  }
  .head{
      width:calc(100% - 30px);
      padding:15px ;
      background-color:lightgrey;
      color: grey;
      font-size:1.2rem;
      border-bottom:2px solid rgb(193, 191, 191);
  }
  
  .delete{
      padding:10px;
      background-color:red;
      color:white;
      font-size:1rem;
      border-radius:5px;
  }
  .edit{
      padding:10px;
      background-color:deepskyblue;
      color:white;
      font-size:1rem;
      border-radius:5px;
  }
  .table{
      width:100%;
      padding:10px;
  }

  table{
     
      width:calc(100% - 30px);
      border-collapse:collapse;
  }
  table tr th{
      padding:10px 0;
  }
  td{
      padding:10px;
      text-align:center;
  }
  td:nth-child(4),th:nth-child(4){
      width:40%;
  }            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="main">

     <div class="content">
<section class="cat">
     <div class="cathead">
         <h1>Add Category</h1>
         <a href="subCategory.aspx">+Add</a>
     </div>
    <div class="cats">
        <div class="head">Categories</div>
        <div class="table" >
            <table border="1" style="width:calc(100% - 30px);" >
                 <tr>
                     <th>Edit</th>
                     <th>Delete</th>
                     <th>subcat ID</th>
                     <th>Category</th>
                     <th>SubCategory</th>
                     <th>Status</th>
                 </tr>
                <asp:Repeater EnableViewState="false" ID="rpt1" runat="server" OnItemCommand="rpt1_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td><a  class="edit" href='subCategory.aspx?Edit=<%#Eval("sub_id") %>'>Edit</a></td>
                            <td><asp:Button CssClass="delete" runat="server" CommandArgument='<%#Eval("sub_id")%>'  Text="Delete" /></td>
                            <td><%#Eval("sub_id")%></td>
                            <td><%#Eval("category")%></td>
                            <td><%#Eval("subCategory")%></td>
                            <td><%#Eval("status")%></td>
                        </tr>
                        
                    </ItemTemplate>
                </asp:Repeater>

            </table>
        </div>
        
    </div>
 </section>
     </div>
            </div>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style>
        b, i {  /*  for both  b and i tag*/
            color: blue;
            background-color: rgb(36, 220, 190);
        }

            b i {
                color: hotpink;
                background-color: rgb(36, 246, 400);
                margin-left: 120px;
                border: 2px solid red;
                padding: 10px;
                margin: 20px;
      
            }

                b i:hover {
                    color: hotpink;
                    background-color: rgb(36, 246, 400);
                    margin-left: 120px;
                    border: 2px solid yellow;
                    padding: 13px;
                    margin: 20px;
                    font-size: xx-large;
                    cursor: wait;
                 
                }
        #b1 {  /*  Id selector */
            color:brown;
        }
        .red {  /* class selector */
            background-color:red;
        }
        u.red {  /* only for  class red with tag u*/
            color:yellow;
        }
        p b {  /*  for b insude p tag only */
            color: green;
            background-color: rgb(36, 220, 190);
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b style="color: red; background-color: yellow">This is bold</b>    <br />
        
            <b>This is bold</b>     <br />
       
            <b id="b1">This is bold</b><br />    <br />
            <b><i>This is Italic inside  BOld </i></b><br />    <br />
             <b class="red">This is bold</b><br />
              <u class="red">This is bold</u><br />
            
            <i style="letter-spacing: 2mm; word-spacing: 2cm">This is Italic </i> <br />
           
            <u>This is UnderLine</u><br />
            <p>
                This Is <b>BOld </b>under P tag 

            </p>
        </div>
    </form>
</body>
</html>

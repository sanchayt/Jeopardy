<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Question</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@page  import="com.jeopardy.beans.Question" %>
        <style>
            body{
                
               background-color: black;
                text-align: center;

            }
            #whole{
                background-color: black;
                border-radius: 20px;
                height: auto;
                width: 80%;
                text-align: center;
                position:  absolute;
                
                margin-left: 10%;
                margin-right: 5%;
                margin-bottom: 10%;
                opacity: 0.8;
                color: white;
            }
            #top{
                height: auto;
                width: 84%;
                text-align: center;
                font: 50px/300% cursive;
                padding: auto;
                border-radius: .5em;
                margin: 8%;
                margin-top: 3%;
                position: relative;
                background-color:  rgba(0,0,100,1);
            }
          
            input  {
                width: 40%;
                height: auto;
                margin: 1%;
                color:  white;
                border: solid 2px;
                border-color:   #15aeec;
                background: transparent;
                font: 50px/100% cursive;
                font-weight:  bolder; 
            }
            
            label{
                font-size: 80px;
                font-family: Chlorinar ;
                padding: 10px;
                text-align: center;
                color:  #15aeec;
            }

            #button_example{
                border:0px solid #8a66f4; 
                -webkit-border-radius: 9px;
                -moz-border-radius: 9px;
                border-radius: 9px;
                font-size:43px;
                font-family:times new roman, times, serif;
                padding: 14px 14px 14px 14px;
                text-decoration:none;
                display:inline-block;
                text-shadow: -3px -3px 0 rgba(0,0,0,0.3);
                font-weight:bold; 
                color: #FFFFFF;
                height: auto;
                width: auto;
                float: right;
                position:   relative;
                margin: auto;
                margin-top: 45%;
                background-color: #b29af8; background-image: -webkit-gradient(linear, left top, left bottom, from(#b29af8), to(#9174ed));
                background-image: -webkit-linear-gradient(top, #b29af8, #9174ed);
                background-image: -moz-linear-gradient(top, #b29af8, #9174ed);
                background-image: -ms-linear-gradient(top, #b29af8, #9174ed);
                background-image: -o-linear-gradient(top, #b29af8, #9174ed);
                background-image: linear-gradient(to bottom, #b29af8, #9174ed);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#b29af8, endColorstr=#9174ed);
            }

            #button_example:hover{
                border:4px solid #693bf1;
                background-color: #8e6af5; background-image: -webkit-gradient(linear, left top, left bottom, from(#8e6af5), to(#6d47e7));
                background-image: -webkit-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -moz-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -ms-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -o-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: linear-gradient(to bottom, #8e6af5, #6d47e7);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#8e6af5, endColorstr=#6d47e7);
            }

           
        </style>
    </head>
    <body>
        <form action="doubleDouble">
            <div id="whole"> <label>Daily Double</label>
                <div id="top"> Enter Amount</div>
                <input type="text" name="dailyDoubleValue" />
                
            </div>
            <input type="submit" name = "buttonType" value="Submit" id="button_example"/>
        </form>
    </body>
</html>


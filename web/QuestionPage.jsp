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
                zoom:75%;
                background-image: url("nature.jpg") ;
                background-size:  cover;
                background-repeat:  no-repeat;
                text-align: center;

            }
            #whole{
                background-color: black;
                border-radius: 20px;
                height: auto;
                width: 80%;
                text-align: center;
                position:  absolute;
                margin-top: 5%;
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
            #first,#third{
                height: auto;
                width: 34%;
                text-align: center;
                font: 50px/300% cursive;
                padding: auto;
                border-radius: .5em;
                margin: 8%;
                margin-top: 0%;
                margin-bottom: 3%;
                position: relative;
                background-color:  #ea6400;
                float: left;
            }
            #second,#fourth{
                height: auto;
                width: 34%;
                text-align: center;
                font: 50px/300% cursive;
                padding: auto;
                border-radius: .5em;
                margin: 8%;
                margin-top: 0%;
                margin-bottom: 3%;
                position: relative;
                background-color:  #ea6400;
                float: right;
            }
            input  {
                width: 2.7em;
                height: 2.7em;
                margin: 2%;
            }


            .button_example{
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

            .button_example:hover{
                border:4px solid #693bf1;
                background-color: #8e6af5; background-image: -webkit-gradient(linear, left top, left bottom, from(#8e6af5), to(#6d47e7));
                background-image: -webkit-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -moz-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -ms-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: -o-linear-gradient(top, #8e6af5, #6d47e7);
                background-image: linear-gradient(to bottom, #8e6af5, #6d47e7);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#8e6af5, endColorstr=#6d47e7);
            }

            .button_example2{
                border:0px solid #15aeec;
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
                float: left;
                position: relative;
                margin: auto;
                margin-top: 45%;
                background-color: #49c0f0; background-image: -webkit-gradient(linear, left top, left bottom, from(#49c0f0), to(#2CAFE3));
                background-image: -webkit-linear-gradient(top, #49c0f0, #2CAFE3);
                background-image: -moz-linear-gradient(top, #49c0f0, #2CAFE3);
                background-image: -ms-linear-gradient(top, #49c0f0, #2CAFE3);
                background-image: -o-linear-gradient(top, #49c0f0, #2CAFE3);
                background-image: linear-gradient(to bottom, #49c0f0, #2CAFE3);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#49c0f0, endColorstr=#2CAFE3);
            }

            .button_example2:hover{
                border:4px solid #1090c3;
                background-color: #1ab0ec; background-image: -webkit-gradient(linear, left top, left bottom, from(#1ab0ec), to(#1a92c2));
                background-image: -webkit-linear-gradient(top, #1ab0ec, #1a92c2);
                background-image: -moz-linear-gradient(top, #1ab0ec, #1a92c2);
                background-image: -ms-linear-gradient(top, #1ab0ec, #1a92c2);
                background-image: -o-linear-gradient(top, #1ab0ec, #1a92c2);
                background-image: linear-gradient(to bottom, #1ab0ec, #1a92c2);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#1ab0ec, endColorstr=#1a92c2);
            }

        </style>
    </head>
    <body>
        
        
        <form action="game">
            <div id="whole">
                <div id="top"> <% Question ques = (Question) session.getAttribute("ques"); %><%= ques.getQuestion() %><br></div>
                    <div id="options">
                        <div id="first"><label><input type="radio" name="answer" value="<%=ques.getAns1()%>"><%= ques.getAns1() %></label></div>
                        <div id="second"><label><input type="radio" name="answer" value="<%=ques.getAns2()%>"><%= ques.getAns2() %></label></div>
                        <div id="third"><label><input type="radio" name="answer" value="<%=ques.getAns3()%>"><%= ques.getAns3() %></label></div>
                        <div id="fourth"><label><input type="radio" name="answer" value="<%=ques.getAns4()%>"><%= ques.getAns4() %></label></div>  
                    </div>
                
            </div>
            <input type="submit" name = "buttonType" value="Submit" class="button_example"/>
            <input type="submit" name = "buttonType" value="Quit" class="button_example2"/>
        </form>
    </body>
</html>


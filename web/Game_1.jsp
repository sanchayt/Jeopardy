<%@page import="java.util.ArrayList"%>
<%@page import="com.jeopardy.beans.Client"%>
<!DOCTYPE html>
<!--
To change tdis license header, choose License Headers in Project Properties.
To change tdis template file, choose Tools | Templates
and open tde template in tde editor.
-->
<html>
    <head>
        <title>Game Board</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="widtd=device-widtd, initial-scale=1.0">
        <style>
            body{
                background-image: url("yo.jpg") ;
                background-size: cover ;
                background-repeat:  no-repeat;
                text-align: center;
                zoom:  110%;
            }
            table{
                border: 0px blueviolet solid;
                cursor: cell; 
                color: black;
            }
            td {

                border: 0px  #eb8f0e  double;
                width: 380px;
                height: 60px;
                padding: 3px 3px;
            }
            td:active{
                border: #eb8f0e
            }
            tr {
                background-color: transparent; 

            }
            tr:hover{
                font-size: 130%;
                font-weight: bold;
            }
            button{
                width: 80%;
                display:  inline-block;
                outline: none;
                text-align: center;
                text-decoration: none;
                font: 40px/100%  cursive;
                padding: .5em .5em .55em;
                border-radius: .5em;
                box-shadow: 0 10px 50px rgba(255,153,0,.7);
            }

            .buttons:hover {
                color:   white;
                cursor: pointer;
                background:  #eb8f0e;
            }
            button:active {
                position: relative;
                top: 3px;
            }

            #top{
                position:  initial;
                height: 250px;
                background: rgba(0,0,0,0.6);
                margin: 20px;
            }

            #name{
                font-size: 80px;
                font-family: Chlorinar ;
                margin: 20px;
                padding: 80px;
                float: left;
            }
            #headingName{

                color: aquamarine;
            }

            #scores{
                font-size: 80px;
                font-family: Chlorinar ;
                margin: 20px;
                padding: 90px;
                float: right;
                color:  #6666ff
            }
            #disablingButton:hover{
                color:    #878686;
                cursor:  default;
                background:  #e1dfde ;
                
            }
            #message {        
                background-color: white; 
                border: 1px solid white; 
                border-radius: 5px;
                box-shadow: 1px 1px 5px black, -1px -1px 5px white;
                display: block; 
                height: auto;
                margin: 0 auto; 
                padding: 20px;
                position: relative;      
                top: 10%;
                width: 50%;        
                z-index: 200; 
                cursor: copy;
                color: orange;

}
            #overlay { 
                background-color: rgba(20, 20, 20, 0.8); 
                display: block;
                height: 100%;
                left: 0; 
                position: fixed;  
                top: 0; 
                width: 100%;
                z-index: 1;      
            }
        </style>
    </head>
    <body>
        <div id="top">
            <div id="name">
                <label id="headingName">
                    <% Client client =  (Client)session.getAttribute("Client");
                        ArrayList disabling = (ArrayList)session.getAttribute("disabled"); 
                        String a = "disabled='true' id='disablingButton'";              
                        Integer count = (Integer) session.getAttribute("quesAttempted");
                        if(count!=25){
                    %>
                    Name : <%=client.getName()%>
                </label>
            </div>
        <div id="scores">Earnings: $<%= client.getScore()   %></div></div>
        <div id="bottom">
            <form action="question" >

                <table border="2" cellspacing="2" cellpadding="2" >

                    <tr>
                        <td><button type="button" value="Alcohol">Alcohol</button></td>
                        <td><button type="button" value="Tobacco">Tobacco</button></td>
                        <td><button type="button" value="Harry Potter">Harry_Potter</button></td>
                        <td><button type="button" value="Geography">Geography</button></td>
                        <td><button type="button" value="Marijuana">Marijuana</button></td>
                    </tr>

                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="100A" <% if(disabling.contains("A100")){out.println(a);} %>>100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100T" <% if(disabling.contains("T100")){out.println(a);} %>>100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100H" <% if(disabling.contains("H100")){out.println(a);} %>>100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100G" <% if(disabling.contains("G100")){out.println(a);} %>>100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100M" <% if(disabling.contains("M100")){out.println(a);} %>>100</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="200A" <% if(disabling.contains("A200")){out.println(a);} %>>200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200T" <% if(disabling.contains("T200")){out.println(a);} %>>200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200H" <% if(disabling.contains("H200")){out.println(a);} %>>200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200G" <% if(disabling.contains("G200")){out.println(a);} %>>200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200M" <% if(disabling.contains("M200")){out.println(a);} %>>200</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="400A" <% if(disabling.contains("A400")){out.println(a);} %>>400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400T" <% if(disabling.contains("T400")){out.println(a);} %>>400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400H" <% if(disabling.contains("H400")){out.println(a);} %>>400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400G" <% if(disabling.contains("G400")){out.println(a);} %>>400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400M" <% if(disabling.contains("M400")){out.println(a);} %>>400</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="800A" <% if(disabling.contains("A800")){out.println(a);} %>>800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800T" <% if(disabling.contains("T800")){out.println(a);} %>>800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800H" <% if(disabling.contains("H800")){out.println(a);} %>>800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800G" <% if(disabling.contains("G800")){out.println(a);} %>>800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800M" <% if(disabling.contains("M800")){out.println(a);} %>>800</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="120A" <% if(disabling.contains("A1200")){out.println(a);} %>>1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120T" <% if(disabling.contains("T1200")){out.println(a);} %>>1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120H" <% if(disabling.contains("H1200")){out.println(a);} %>>1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120G" <% if(disabling.contains("G1200")){out.println(a);} %>>1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120M" <% if(disabling.contains("M1200")){out.println(a);} %>>1200</button></td>
                    </tr>
                </table>
            </form>
        </div>
                        <% } else{ %>
        <div id="overlay" >
            <div id="message">
                <form  action="login.html" >
                    YOU WIN $<%=client.getScore() %>
                    <button type="submit" class="buttons">END</button>
                </form>
            </div>
        </div>
                    <% }  %>
    </body>
</html>
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
        </style>
    </head>
    <body>
        <div id="top">
            <div id="name">
                <label id="headingName">
                    <% Client client =  (Client)session.getAttribute("Client"); %>
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
                        <td><button type="submit" name="types" class="buttons" value="100A" >100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100T" >100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100H" >100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100G" >100</button></td>
                        <td><button type="submit" name="types" class="buttons" value="100M" >100</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="200A" >200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200T" >200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200H" >200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200G" >200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="200M" >200</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="400A" >400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400T" >400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400H" >400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400G" >400</button></td>
                        <td><button type="submit" name="types" class="buttons" value="400M" >400</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="800A" >800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800T" >800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800H" >800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800G" >800</button></td>
                        <td><button type="submit" name="types" class="buttons" value="800M" >800</button></td>
                    </tr>
                    <tr>
                        <td><button type="submit" name="types" class="buttons" value="120A" >1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120T" >1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120H" >1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120G" >1200</button></td>
                        <td><button type="submit" name="types" class="buttons" value="120M" >1200</button></td>
                    </tr>
                </table>
            </form>
        </div>
 
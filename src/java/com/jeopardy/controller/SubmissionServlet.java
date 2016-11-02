package com.jeopardy.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.jeopardy.beans.Client;
import com.jeopardy.beans.Question;
import com.jeopardy.logic.LogicClass;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dhruv Talwar
 */
public class SubmissionServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        Question givenQues = (Question) session.getAttribute("ques");
        Client player = (Client) session.getAttribute("Client");
        String answer = request.getParameter("answer");
        String buttonType = (String)request.getParameter("buttonType");
        
        if(buttonType.charAt(0) == 'S'){
        if (givenQues.getCorrectAns().equals(answer)) {
            player.setScore(player.getScore() + givenQues.getValue());
        } else {
            player.setScore(player.getScore() - givenQues.getValue());
            if (player.getScore() < 0) {
                player.setScore(0);
            }
        }
        
         session.setAttribute("Client", player);
        }
        
        RequestDispatcher view = request.getRequestDispatcher("Game_1.jsp");
        view.forward(request, response);

    }

}

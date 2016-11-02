/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jeopardy.controller;

import com.jeopardy.beans.Client;
import com.jeopardy.beans.Question;
import java.io.IOException;
import java.io.PrintWriter;
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
public class DailyDouble extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        Question givenQues = (Question) session.getAttribute("ques");
        Client player = (Client) session.getAttribute("Client");
        int score = player.getScore();
        

        String givenScore = request.getParameter("dailyDoubleValue");
        int dailyDoubleScore;
        if (givenScore == null || givenScore.equals("")) {
            RequestDispatcher view = request.getRequestDispatcher("QuestionPage_1.jsp");
            view.forward(request, response);
            return;
        } else {

            try {
                dailyDoubleScore = Integer.parseInt(givenScore);
                if(dailyDoubleScore<0){
                    throw new Exception();
                }
            } catch (Exception e) {
                RequestDispatcher view = request.getRequestDispatcher("QuestionPage_1.jsp");
                view.forward(request, response);
                return;
            }
            if (dailyDoubleScore > 0) {
                if (score <= 1000) {
                    if (dailyDoubleScore > 1000) {
                        RequestDispatcher view = request.getRequestDispatcher("QuestionPage_1.jsp");
                        view.forward(request, response);
                        return;
                    }
                } else if (dailyDoubleScore > score) {
                    RequestDispatcher view = request.getRequestDispatcher("QuestionPage_1.jsp");
                    view.forward(request, response);
                    return;
                }

            }
        }
        givenQues.setValue(dailyDoubleScore);
        session.setAttribute("ques", givenQues);
        RequestDispatcher view = request.getRequestDispatcher("QuestionPage.jsp");
        view.forward(request, response);

    }
}

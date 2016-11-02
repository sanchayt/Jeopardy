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
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LogicClass.disabled.clear();
        LogicClass.list.clear();

        HttpSession session = request.getSession();
        session.invalidate();
        session = request.getSession(true);
        Client client = new Client();
        LogicClass.loadQuestions();

        if (session.isNew()) {

            String name = request.getParameter("name");
            if (name.length() >= 8) {
                name = name.substring(0, 8);
            }
            client.setScore(0);
            client.setName(name);

            session.setAttribute("Client", client);
            boolean[] dailyDoubleTrue = new boolean[25];
            
            int[] dDouble = LogicClass.givingRandomNum();
            session.setAttribute("DailyDouble", dDouble);

            ArrayList<Question> list = LogicClass.list;

            for (int i = 0; i < list.size(); i++) {

                if (dDouble[0] == i || dDouble[1] == i) {
                    dailyDoubleTrue[i] = true;
                    System.out.println(list.get(i).getCategory() +"  "+ list.get(i).getValue());
                } else {
                    dailyDoubleTrue[i] = false;
                }
            }
            session.setAttribute("dailyDoubleArray", dailyDoubleTrue);

            RequestDispatcher view = request.getRequestDispatcher("Game.jsp");
            view.forward(request, response);

        } else {

        }
    }

}

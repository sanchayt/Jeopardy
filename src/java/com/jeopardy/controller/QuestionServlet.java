package com.jeopardy.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.jeopardy.beans.Question;
import com.jeopardy.logic.LogicClass;
import static com.jeopardy.logic.LogicClass.list;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class QuestionServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String value = request.getParameter("types");
        HttpSession session = request.getSession(false);

        boolean[] dailyDoubleTrue = (boolean[]) session.getAttribute("dailyDoubleArray");
        int score = Integer.parseInt(value.substring(0, 3));
        if (score == 120) {
            score = 1200;
        }
        char category = value.charAt(value.length() - 1);
        Question ques = new Question();

        int index = -1;
        ArrayList<Question> list = LogicClass.list;
        for (int i = 0; i < list.size(); i++) {

            if (list.get(i).getCategory().charAt(0) == category && list.get(i).getValue() == score) {
                ques = list.get(i);
                if (dailyDoubleTrue[i]) {
                    index = i;
                }
            }
        }

        session.setAttribute("ques", ques);
        Question givenQues = (Question) session.getAttribute("ques");

        Integer count = (Integer) session.getAttribute("quesAttempted");
        if (count == null) {
            count = 1;
            session.setAttribute("quesAttempted", count);
        } else {
            count++;
            session.setAttribute("quesAttempted", count);
        }

        String values = givenQues.getCategory().charAt(0) + "" + givenQues.getValue();

        ArrayList<String> disablingList = LogicClass.insertValues(values);
        session.setAttribute("disabled", disablingList);

        for (int i = 0; i < dailyDoubleTrue.length; i++) {
            if (i == index) {
                RequestDispatcher view = request.getRequestDispatcher("QuestionPage_1.jsp");
                view.forward(request, response);
                return;
            }
        }

        RequestDispatcher view = request.getRequestDispatcher("QuestionPage.jsp");
        view.forward(request, response);

    }

}

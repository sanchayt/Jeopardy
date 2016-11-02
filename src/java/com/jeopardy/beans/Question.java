/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jeopardy.beans;

/**
 *
 * @author Dhruv Talwar
 */
public class Question implements java.io.Serializable {
    private String category;
    private String question;
    private int value;
    private String ans1;
    private String ans2;
    private String ans3;
    private String ans4;
    private String correctAns;
   
    public Question(String category, String question, int value, String ans1, String ans2, String ans3, String ans4, String correctAns) {
        this.setCategory(category);
        this.setValue(value);
        this.setQuestion(question);
        this.setAns1(ans1);
        this.setAns2(ans2);
        this.setAns3(ans3);
        this.setAns4(ans4);
        this.setCorrectAns(correctAns);
    }

   
    public Question() {
        
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getAns1() {
        return ans1;
    }

    public void setAns1(String ans1) {
        this.ans1 = ans1;
    }

    public String getAns2() {
        return ans2;
    }

    public void setAns2(String ans2) {
        this.ans2 = ans2;
    }

    public String getAns3() {
        return ans3;
    }

    public void setAns3(String ans3) {
        this.ans3 = ans3;
    }

    public String getAns4() {
        return ans4;
    }

    public void setAns4(String ans4) {
        this.ans4 = ans4;
    }

    public String getCorrectAns() {
        return correctAns;
    }

    public void setCorrectAns(String correctAns) {
        this.correctAns = correctAns;
    }
    
    
}

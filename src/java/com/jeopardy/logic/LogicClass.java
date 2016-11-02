/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jeopardy.logic;

import com.jeopardy.beans.Question;
import java.util.ArrayList;
import java.util.Random;

public class LogicClass {
    
    public static ArrayList<Question> list = new ArrayList<>();
    public static ArrayList<String> disabled = new ArrayList<>();
    public static void loadQuestions() {
        
        list.add(new Question("Alcohol","Percentage of Undergraduate students used alchol(drank one drink or more on any occassion) in Ontario?",100,"70","80","60","90","80"));
        list.add(new Question("Alcohol","Percentage of teen(after grade 12) reported for binge drinking in Ontario?",200,"75","66","35","50","35"));
        list.add(new Question("Alcohol","Risks associated with teen drinking include: ?",400,"Serious Injuries","Risky Sexual Behaviour","Likelihood Of using other drugs","All of the above","All of the above"));
        list.add(new Question("Alcohol","Why women become impaired faster than men?",800,"More Fat in blood","More Water in blood","More Oxygen in blood","More Proteins in blood","More Fat in blood"));
        list.add(new Question("Alcohol","How many drinks in a week for a women increases risk of developing breast cancer?",1200,"More than 10","More than 7","More than 5","More than 15","More than 7"));
        list.add(new Question("Tobacco","Number of chemicals Tobacco smoke contains which lead to cancer?",100,"100","20","50","70","70"));
        list.add(new Question("Tobacco","Percentage of newly emerged lung cancer cases (which are related to smoking)?",200,"70","85","100","50","85"));
        list.add(new Question("Tobacco","Who are more likely to die early if they are chronic smoker?",400,"Woman","Man","Equal life span","Both become immortal","Woman"));
        list.add(new Question("Tobacco","Which of the disease is not caused by smoking?",800,"Lung Cancer","Throat Irritations","AIDS","Osteoporosis","AIDS"));
        list.add(new Question("Tobacco","Percentage of smokers who want to quit smoking completely?",1200,"58","69","33","88","69"));
        list.add(new Question("Harry Potter","Who first shows Harry the diary of Tom Riddle?",100,"Moaning Myrtle","Fawkes","Nearly Headless Nick","Ginny Weasley","Moaning Myrtle"));
        list.add(new Question("Harry Potter","What's the only book in the Harry Potter series that doesn't feature Lord Voldemort?",200,"The Sorcerer's Stone","The Prisoner of Azkaban","The Deathly Hallows","The Goblet of Fire","The Prisoner of Azkaban"));
        list.add(new Question("Harry Potter","In order of birth, who are seven Weasley siblings?",400,"Percy,Bill,George, Charlie,Fred,Ron,Ginny","George,Fred,Percy, Bill,Charlie,Ron,Ginny","Bill,Charlie,Percy, Fred,George,Ron,Ginny","None of these","Bill,Charlie,Percy, Fred,George,Ron,Ginny"));
        list.add(new Question("Harry Potter","How many copies did \"Harry Potter and the Deathly Hallows\" sell the first day of its release in the U.S. and the U.K.?",800,"5 million","8 million","11 million","20 million","11 million"));
        list.add(new Question("Harry Potter","What are the three Unforgivable Curses?",1200,"Impediments, Incarcerous and Incendio","Aveda Kedavra, Crucio and Imperio","Expelliarmus, Expecto Patronum and Diffindo","None of these","Aveda Kedavra, Crucio and Imperio"));
        list.add(new Question("Geography","Which is the longest exposed mountain range in the world?",100,"Andes","Himalayas","Alps","Rocky Mountains","Andes"));
        list.add(new Question("Geography","Which mountain is more closer to moon?",200,"Mt. Everest","K2","Mt. Chimborazo","Mt. Blanc","Mt. Chimborazo"));
        list.add(new Question("Geography","What is the amount of planet's territory covered by the seven largest countries in the world (Russia, Canada, USA, China, Australia, Brazil and Argentina)?",400,"One-third","Half","two-thirds","three-fourths","Half"));
        list.add(new Question("Geography","Which African nation never been a European colony?",800,"Egypt","Republic of Congo","Ethopia","Madagascar","Ethopia"));
        list.add(new Question("Geography","How many and which countries are surrounded completed by another country?",1200,"2,Vatican City,Monaco","4,Vatican City,San Marino,Nauru,Monaco","3,Vatican City,San Marino,Lesotho","1,Vatican City","3,Vatican City,San Marino,Lesotho"));
        list.add(new Question("Marijuana","What is the rank of Cannabis in terms of popularity among youth in Ontario?",100,"Second","First","Fifth","Third","Third"));
        list.add(new Question("Marijuana","Percentage of Ontario students have used the drug once?",200,"33","42","67","55","42"));
        list.add(new Question("Marijuana","Which is the least harmful than others?",400,"Marijuana","Tobacco","Alcohol","All are equal","Marijuana"));
        list.add(new Question("Marijuana","Which disease can be prevented by use of Marijuana-derived compound?",800,"Cancer","AIDS","Respiratory illnesses","Liver illnesses","Cancer"));
        list.add(new Question("Marijuana","Which is the first country to legalize Marijuana?",1200,"Switzerland","Uruguay","Canada","Australia","Uruguay"));
        
    
    }
    
    public static Question chooseQuestion(String value){
        LogicClass.loadQuestions();
        System.out.println(value);
        int score = Integer.parseInt(value.substring(0, 2));
        char category = value.charAt(value.length()-1);
        
        for(Question ques: list){
            if(ques.getCategory().charAt(0)==category && ques.getValue()==score){
                return ques;
            }
        }
        return null;
    }
    public static ArrayList<String> insertValues(String value){
        disabled.add(value);
        return disabled;
    }
    public static int[] givingRandomNum() {
        int number = (int) (Math.random()*25);
        
        int num2 = (int) (Math.random()*25);
        while(num2==number){
            num2 = (int) (Math.random()*25);
        }
        System.out.println(number + "\n" + num2);
        int[] numbers = {number,num2};
        return numbers;
    }
    
    public static void main(String[] args) {
        LogicClass.loadQuestions();
        for (Question list1 : list) {
            System.out.println("Question: "+ list1.getQuestion()+"\n"+"Answer: "+list1.getCorrectAns()+"\n");
        }
        
       
    }
}


//
//  GkDat.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import Foundation


struct GKQuestion {
       let question: String
       let answers: [String]
       let correctAnswer: Int
   }

var gkquestions: [GKQuestion] = [
        GKQuestion(
            question: "Who is the President of USA?",
            answers: ["Donald Trump","Barack Obama", "Joe Biden", "Kamala Harris"],
            correctAnswer: 2),
        GKQuestion(
            question: "Which country gifted the 'Statue of Liberty' to USA in 1886?",
            answers: ["France", "Canada", "Brazil", "England"],
            correctAnswer: 0),
        GKQuestion(
            question: "Which country is known as the 'Land of Thunderbolts'?",
            answers: ["China", "Bhutan", "Mongolia", "Thailand"],
            correctAnswer: 1),
        GKQuestion(
            question: "Which continent has the highest number of countries?",
            answers: ["Asia", "Europe", "North America", "Africa"],
            correctAnswer: 3),
        GKQuestion(
            question: "Total number of oceans in the world is?",
            answers: ["3", "5", "7", "12"],
            correctAnswer: 1),
       
    ]





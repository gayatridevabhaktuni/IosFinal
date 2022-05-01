//
//  SportsData.swift
//  QuizApp_Button
//
//  Created by student on 4/30/22.
//

import Foundation
struct SQuestion {
       let question: String
       let answers: [String]
       let correctAnswer: Int
   }

var squestions: [SQuestion] = [
        SQuestion(
            question: "What sport is best known as the ‘king of sports’?",
            answers: ["Cricket","Soccer", "basketball", "hockey"],
            correctAnswer: 0),
        SQuestion(
            question: "Who has won more tennis grand slam titles?",
            answers: ["Venus Williams", "Serena Williams", "Sania mirza", "Donna Vekić"],
            correctAnswer: 1),
        SQuestion(
            question: "How many holes are played in an average round of golf?",
            answers: ["21", "24", "18", "15"],
            correctAnswer: 2),
        SQuestion(
            question: "How long is a marathon?",
            answers: ["26.2 miles.", "22.3 miles.", "34.5 miles.", "18.7 miles."],
            correctAnswer: 0),
        SQuestion(
            question: "Which of the following sports does not use a ball?",
            answers: ["Golf", "tennis", "hockey", "polo"],
            correctAnswer: 2),
        
    ]

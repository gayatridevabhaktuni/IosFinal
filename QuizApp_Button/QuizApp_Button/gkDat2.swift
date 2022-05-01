//
//  GkDat.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import Foundation


struct MQuestion {
       let question: String
       let answers: [String]
       let correctAnswer: Int
   }

var mquestions: [MQuestion] = [
        MQuestion(
            question: "Who actually drew the sketch of Rose in Titanic?",
            answers: ["Leonardo DiCaprio","Billy Zane", "James Cameron", "Kathy Bates"],
            correctAnswer: 2),
        MQuestion(
            question: "Where were The Lord of the Rings movies filmed?",
            answers: ["Ireland", "Iceland", "New Zealand", "Australia"],
            correctAnswer: 2),
        MQuestion(
            question: "If you watch the Marvel movies in chronological order, which movie would you watch first?",
            answers: ["Iron Man", "Captain America: The First Avenger", "Doctor Strange", "Captain Marvel"],
            correctAnswer: 1),
        MQuestion(
            question: "Which actor has won the most national awards in India?",
            answers: ["Shah Rukh Khan", "Amitabh Bachchan", "Aamir Khan", "Ranbir kapoor"],
            correctAnswer: 0),
        MQuestion(
            question: "How many Oscar awards was won by ‘Slumdog Millionaire’ movie?",
            answers: ["5", "10", "8", "7"],
            correctAnswer: 2),
        
    ]






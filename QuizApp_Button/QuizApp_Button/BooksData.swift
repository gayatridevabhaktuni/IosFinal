//
//  BooksData.swift
//  QuizApp_Button
//
//  Created by student on 4/30/22.
//

import Foundation
struct BQuestion {
       let question: String
       let answers: [String]
       let correctAnswer: Int
   }

var bquestions: [BQuestion] = [
        BQuestion(
            question: "Who is the author of the famous novel 'Pride&Prejudice'?",
            answers: ["Vikram Seth","Jane Austen", "Anita Desai", "Kuldeep Singh"],
            correctAnswer: 1),
        BQuestion(
            question: "'The Naked Face', a very popular book is written by",
            answers: ["Abu Nuwas", "John Keats", "Sydney Sheldon", "Kiran Bedi"],
            correctAnswer: 2),
        BQuestion(
            question: "Who among the following is the author of the book 'India Remembered'?",
            answers: ["Pamela Mountbatten", "M K rowling", "Robert Dallek", "Stephen Hawking"],
            correctAnswer: 0),
        BQuestion(
            question: "Name the author who created the famous series of Books Harry Potter",
            answers: ["William Shakespeare", "Charles Dickens", "J.K. Rowling", "R.K. Rowling"],
            correctAnswer: 2),
        BQuestion(
            question: "Who wrote Ramayna?",
            answers: ["Tulsidas", "Valmiki", "Kalidas", "Soordas"],
            correctAnswer: 1),
       
    ]

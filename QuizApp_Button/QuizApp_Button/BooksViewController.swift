//
//  BooksViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class BooksViewController: UIViewController {
    
    @IBOutlet weak var op1: UIButton!
    
    
    @IBOutlet weak var op2: UIButton!
    
    
    @IBOutlet weak var op3: UIButton!
    
    
    
    @IBOutlet weak var op4: UIButton!
    
    
    @IBAction func option1Button(_ sender: Any) {
        checkAnswer(idx: 0)
    }
    
    
    @IBAction func option2Button(_ sender: Any) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func option3Button(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    
    
    @IBAction func option4Button(_ sender: Any) {
        checkAnswer(idx: 3)
    }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        loadNextQuestion()
    }
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func showScoreButton(_ sender: Any) {
        resultLabel.text! = "You got \(noCorrect) out of \(total) correct"
    }
    
    @IBOutlet weak var showScore: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    var currentQuestion: BQuestion?
    var currentQuestionPosition: Int = 0
    var noCorrect: Int = 0
     
     func checkAnswer(idx: Int) {
         if (currentQuestion!.correctAnswer == idx) {
             noCorrect += 1
             
         }
         else{
             
         }
         op1.isEnabled = false
         op2.isEnabled = false
         op3.isEnabled = false
         op4.isEnabled = false
         
         
     }
 
 var total  = mquestions.count
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = bquestions[0]
        setQuestions()
        showScore.isHidden = true


        // Do any additional setup after loading the view.
    }
    func setQuestions() {
        questionLabel.text = currentQuestion!.question
            op1.setTitle(currentQuestion!.answers[0], for: .normal)
            op2.setTitle(currentQuestion!.answers[1], for: .normal)
            op3.setTitle(currentQuestion!.answers[2], for: .normal)
            op4.setTitle(currentQuestion!.answers[3], for: .normal)
           
        }
        func loadNextQuestion() {
            if (currentQuestionPosition + 1 < bquestions.count) {
                currentQuestionPosition += 1
                currentQuestion = bquestions[currentQuestionPosition]
                setQuestions()
                if currentQuestionPosition == (bquestions.count - 1){
                    showScore.isHidden = false
                    nextButton.isEnabled = false
            }
                op1.isEnabled = true
                op2.isEnabled = true
                op3.isEnabled = true
                op4.isEnabled = true
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}

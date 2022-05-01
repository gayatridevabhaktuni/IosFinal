//
//  MoviesViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    
    @IBAction func o1Button(_ sender: Any) {
        checkAnswer(idx: 0)
    }
    
    @IBAction func o2Button(_ sender: Any) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func o3Button(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    
    
    @IBAction func o4Button(_ sender: Any) {
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
    
    
    @IBOutlet weak var option1: UIButton!
    
    
    @IBOutlet weak var option2: UIButton!
    
    
    @IBOutlet weak var option3: UIButton!
    
    
    
    @IBOutlet weak var option4: UIButton!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    var currentQuestion: MQuestion?
    var currentQuestionPosition: Int = 0
    var noCorrect: Int = 0
     
     func checkAnswer(idx: Int) {
         if (currentQuestion!.correctAnswer == idx) {
             noCorrect += 1
             
         }
         else{
             
         }
         option1.isEnabled = false
         option2.isEnabled = false
         option3.isEnabled = false
         option4.isEnabled = false
         
         
     }
 
 var total  = mquestions.count
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = mquestions[0]
        setQuestions()
        showScore.isHidden = true

        // Do any additional setup after loading the view.
    }
    func setQuestions() {
        questionLabel.text = currentQuestion!.question
            option1.setTitle(currentQuestion!.answers[0], for: .normal)
            option2.setTitle(currentQuestion!.answers[1], for: .normal)
            option3.setTitle(currentQuestion!.answers[2], for: .normal)
            option4.setTitle(currentQuestion!.answers[3], for: .normal)
           
        }
        func loadNextQuestion() {
            if (currentQuestionPosition + 1 < mquestions.count) {
                currentQuestionPosition += 1
                currentQuestion = mquestions[currentQuestionPosition]
                setQuestions()
                if currentQuestionPosition == (mquestions.count - 1){
                    showScore.isHidden = false
                    nextButton.isEnabled = false
            }
                option1.isEnabled = true
                option2.isEnabled = true
                option3.isEnabled = true
                option4.isEnabled = true
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

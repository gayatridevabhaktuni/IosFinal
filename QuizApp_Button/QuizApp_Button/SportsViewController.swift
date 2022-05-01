//
//  SportsViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class SportsViewController: UIViewController {
    
    
    
    
    @IBAction func opt2Button(_ sender: Any) {
        checkAnswer(idx: 1)
    }
    
    @IBAction func opt1Button(_ sender: Any) {
        checkAnswer(idx: 0)
    }
    
    @IBAction func opt3Button(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    
    
    @IBAction func opt4Button(_ sender: Any) {
        checkAnswer(idx: 3)
    }
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        loadNextQuestion()
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func showScoreButton(_ sender: Any) {
        resultLabel.text! = "You got \(noCorrect) out of \(total) correct"
    }
    
    @IBOutlet weak var showScore: UIButton!
    
    
    @IBOutlet weak var o1: UIButton!
    
    
    @IBOutlet weak var o2: UIButton!
    
    
    @IBOutlet weak var o3: UIButton!
    
    
    
    @IBOutlet weak var o4: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var currentQuestion: SQuestion?
    var currentQuestionPosition: Int = 0
    var noCorrect: Int = 0
     
     func checkAnswer(idx: Int) {
         if (currentQuestion!.correctAnswer == idx) {
             noCorrect += 1
             
         }
         else{
             
         }
         o1.isEnabled = false
         o2.isEnabled = false
         o3.isEnabled = false
         o4.isEnabled = false
         
         
     }
 
 var total  = squestions.count
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = squestions[0]
        setQuestions()
        showScore.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    func setQuestions() {
        questionLabel.text = currentQuestion!.question
            o1.setTitle(currentQuestion!.answers[0], for: .normal)
            o2.setTitle(currentQuestion!.answers[1], for: .normal)
            o3.setTitle(currentQuestion!.answers[2], for: .normal)
            o4.setTitle(currentQuestion!.answers[3], for: .normal)
           
        }
        func loadNextQuestion() {
            if (currentQuestionPosition + 1 < squestions.count) {
                currentQuestionPosition += 1
                currentQuestion = squestions[currentQuestionPosition]
                setQuestions()
                if currentQuestionPosition == (squestions.count - 1){
                    showScore.isHidden = false
                    nextButton.isEnabled = false
            }
                o1.isEnabled = true
                o2.isEnabled = true
                o3.isEnabled = true
                o4.isEnabled = true
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

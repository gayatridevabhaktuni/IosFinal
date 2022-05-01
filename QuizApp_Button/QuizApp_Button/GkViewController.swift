//
//  GkViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class GkViewController: UIViewController {
    
    
    @IBOutlet weak var questionText: UILabel!
    
    
    
    
    @IBOutlet weak var nextbutton: UIButton!
    
    
    @IBOutlet weak var opt1: UIButton!
    
    
    @IBOutlet weak var opt2: UIButton!
    
    
    @IBOutlet weak var opt3: UIButton!
    
   
    
    
    @IBOutlet weak var opt4: UIButton!
    
    @IBAction func option1(_ sender: UIButton) {
        checkAnswer(idx: 0)
       
    }
    
    @IBAction func option2(_ sender: UIButton) {
        checkAnswer(idx: 1)
    }
    @IBAction func option3(_ sender: Any) {
        checkAnswer(idx: 2)
    }
    
    @IBAction func option4(_ sender: Any) {
        checkAnswer(idx: 3)
    }
    
    @IBAction func showScore(_ sender: Any) {
        resultOutet.text! = "You got \(noCorrect) out of \(total) correct"
    }
    
    
    
    
    @IBOutlet weak var resultOutet: UILabel!
    
    
        
    @IBAction func answerSelected(_ sender: UIButton) {
        
//        checkAnswer(idx: 0)
//        if (currentQuestion!.correctAnswer == idx){
//        sender.backgroundColor = .green
//        }else{
//            sender.backgroundColor = .red
//        }
//        let userAnswer = sender.currentTitle
//        let check = Question.checkAnswer(userAnswer)
//
//                if check{
//                    sender.backgroundColor = UIColor.green;
//                }
//                else {
//                    sender.backgroundColor = UIColor.red;
//                }
                
          
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        loadNextQuestion()
    }
    
    @IBOutlet weak var showScoree: UIButton!
    
       var currentQuestion: GKQuestion?
        var currentQuestionPosition: Int = 0
        var noCorrect: Int = 0
        
        func checkAnswer(idx: Int) {
            if (currentQuestion!.correctAnswer == idx) {
                noCorrect += 1
                
            }
            else{
                
            }
            opt1.isEnabled = false
            opt2.isEnabled = false
            opt3.isEnabled = false
            opt4.isEnabled = false
            
            
        }
    
    var total  = gkquestions.count
    
            


    override func viewDidLoad() {
        super.viewDidLoad()
                currentQuestion = gkquestions[0]
                setQuestions()
        
             showScoree.isHidden = true
//        if currentQuestionPosition == (questions.count - 1){
//            showScoree.isHidden = false
    //}
        
        
       
        
        
       // resultOutet.text! =   "You got \(noCorrect) out of \(total) correct"

        // Do any additional setup after loading the view.
    }
    func setQuestions() {
        questionText.text = currentQuestion!.question
            opt1.setTitle(currentQuestion!.answers[0], for: .normal)
            opt2.setTitle(currentQuestion!.answers[1], for: .normal)
            opt3.setTitle(currentQuestion!.answers[2], for: .normal)
            opt4.setTitle(currentQuestion!.answers[3], for: .normal)
            //progressLabel.text = "Question: \(currentQuestionPosition + 1)/ \(questions.count)"
        }
        func loadNextQuestion() {
            if (currentQuestionPosition + 1 < gkquestions.count) {
                currentQuestionPosition += 1
                currentQuestion = gkquestions[currentQuestionPosition]
                setQuestions()
                if currentQuestionPosition == (gkquestions.count - 1){
                    showScoree.isHidden = false
                    nextbutton.isEnabled = false
            }
                opt1.isEnabled = true
                opt2.isEnabled = true
                opt3.isEnabled = true
                opt4.isEnabled = true
        }
    
//    override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//        }
    
    
    
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

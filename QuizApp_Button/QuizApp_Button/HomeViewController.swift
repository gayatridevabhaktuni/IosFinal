//
//  ViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var begin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "topicsSegue"{
            var destination = segue.destination as! TopicsViewController
        }
            
    }

}


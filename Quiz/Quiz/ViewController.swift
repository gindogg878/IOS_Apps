//
//  ViewController.swift
//  Quiz
//
//  Created by Gino T on 10/26/16.
//  Copyright © 2016 Gino T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet var questionLabel: UILabel!
        @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?","What is 7+7?","What is the capital of Vermont?", "When did the cubs win last Worlds series?", "What year did Cubs make thier last world series?", "Whose nickname is the Hawk?" ]
    let answers: [String] = ["Grapes","14", "Montpelier","1908","1945","Andre Dawson"]
    var currentQuestionIndex: Int = 0







    
    @IBAction func showNextQuestion(sender: AnyObject){
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0}
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }



}



  

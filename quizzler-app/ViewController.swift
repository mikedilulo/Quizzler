//
//  ViewController.swift
//  quizzler-app
//
//  Created by Mike Di’ Lulo on 4/16/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizQuestions = [
        Question(text: "Rubberbands don't last longer when they are refrigerated", answer: "False"),
        Question(text: "Peanuts have one ingredient that is used in dynamite", answer: "True"),
        Question(text: "In Greece, the National Anthem is 158 verses", answer: "True")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 8)
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizQuestions[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber + 1 < quizQuestions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quizQuestions[questionNumber].text
    }
    
}


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
        Question(q: "Rubberbands don't last longer when they are refrigerated", a: "False"),
        Question(q: "Peanuts have one ingredient that is used in dynamite", a: "True"),
        Question(q: "In Greece, the National Anthem is 158 verses", a: "True"),
        Question(q: "There are 293 ways to make change for a dollar", a: "True"),
        Question(q: "The average secretaries right hand does 56% of the typing", a: "False"),
        Question(q: "Sharks are not the only animal that can blink with both eyes", a: "False"),
        Question(q: "Black bears are the best kind of bear", a: "True"),
        Question(q: "There are less chickens than people in the world", a: "False"),
        Question(q: "In Greece, the National Anthem is 158 verses", a: "True"),
        Question(q: "New Jersey grows 2/3 of the world's eggplants", a: "True"),
        Question(q: "The longest one syllabus word in the English language is 'screeched'", a: "True")
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


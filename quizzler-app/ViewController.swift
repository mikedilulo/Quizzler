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
    "Rubberbands don't last longer when they are refrigerated",
    "Peanuts have one ingredient that is used in dynamite",
    "In Greece, the National Anthem is 158 verses"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 8)
        questionLabel.text = quizQuestions[questionNumber]
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
    }
    
}


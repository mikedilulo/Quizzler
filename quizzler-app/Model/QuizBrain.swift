//
//  QuizBrain.swift
//  quizzler-app
//
//  Created by Mike Di’ Lulo on 4/17/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import Foundation

struct QuizBrain {
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
        Question(q: "The longest one syllabus word in the English language is 'screeched'", a: "True"),
        Question(q: "In the movie Pulp Fiction, all clocks are stuck on 4:20", a: "True"),
        Question(q: "There are multiple words in the English language rhymes with month, silver or purple", a: "False"),
        Question(q: "Dreamt is not the only word in the English Language that ends with mt", a: "False"),
        Question(q: "The name of the 50 states are on the back of the 5 dollar bill", a: "True"),
        Question(q: "Almonds are a member of the peach family", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizQuestions[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return quizQuestions[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quizQuestions.count)
        return progress
    }
    
    // Replace old value of questions with the new value using mutating keyword
    mutating func nextQuestion() {
        if questionNumber + 1 < quizQuestions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    

}

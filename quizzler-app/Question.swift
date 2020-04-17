//
//  Question.swift
//  quizzler-app
//
//  Created by Mike Di’ Lulo on 4/17/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}

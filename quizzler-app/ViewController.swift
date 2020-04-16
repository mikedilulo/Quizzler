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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 8)
    }


}


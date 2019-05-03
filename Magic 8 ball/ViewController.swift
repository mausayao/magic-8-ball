//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Maurício de Freitas Sayão on 03/05/19.
//  Copyright © 2019 Maurício de Freitas Sayão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let responses = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateResponse()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateResponse()
    }
    
    @IBAction func askMe(_ sender: UIButton) {
        updateResponse()
    }
    
    private func updateResponse() {
        ballImageView.image = getAResponseFromQuestion()
    }
    
    private func getARandomIndex() -> Int {
        return Int.random(in: 0 ... 4)
    }
    
    private func getAResponseFromQuestion() -> UIImage {
        let response = responses[getARandomIndex()]
        let image = UIImage(named: response)
        return image!
    }
}


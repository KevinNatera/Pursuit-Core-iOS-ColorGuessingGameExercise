//
//  ViewController.swift
//  ColorGuessingGameExercise
//
//  Created by Kevin Natera on 7/30/19.
//  Copyright © 2019 Kevin Natera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentScore = 0
    var highScore = 0
    var randNum1 = CGFloat.random(in: 0...1)
    var randNum2 = CGFloat.random(in: 0...1)
    var randNum3 = CGFloat.random(in: 0...1)
    var randNum4 = CGFloat.random(in: 0...1)
    
    @IBOutlet weak var highScoreOutlet: UILabel!
    
    @IBOutlet weak var currentScoreOutlet: UILabel!
    
    @IBOutlet weak var randomColorOutlet: UILabel!
    
    @IBOutlet weak var messageOutlet: UILabel!
    
    
    @IBOutlet weak var redOutlet: UIButton!
    
    @IBOutlet weak var greenOutlet: UIButton!
    
    @IBOutlet weak var blueOutlet: UIButton!
    
    @IBOutlet weak var newGameOutlet: UIButton!
    
    
    
    @IBAction func redButton(_ sender: UIButton) {
        if randNum1 >= randNum2 && randNum1 >= randNum3 {
            currentScore += 1
            self.messageOutlet.text = "Nice! What color is the square above closest to?"
            self.currentScoreOutlet.text = "Current Score: \(currentScore)"
            changeColor()
        } else {
            self.messageOutlet.text = "Sorry, you lose! Your final score is \(currentScore). Play again?"
            
            redOutlet.isEnabled = false
            greenOutlet.isEnabled = false
            blueOutlet.isEnabled = false
            
            if currentScore > highScore {
                highScore = currentScore
                self.highScoreOutlet.text = "High Score: \(highScore)"
            }
        }
        
        if currentScore > highScore {
            self.highScoreOutlet.text = "High Score: \(currentScore)"
        }
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        if randNum3 >= randNum1 && randNum3 >= randNum2 {
            currentScore += 1
            self.messageOutlet.text = "Nice! What color is the square above closest to?"
            self.currentScoreOutlet.text = "Current Score: \(currentScore)"
            changeColor()
        } else {
            self.messageOutlet.text = "Sorry, you lose! Your final score is \(currentScore). Play again?"
            
            redOutlet.isEnabled = false
            greenOutlet.isEnabled = false
            blueOutlet.isEnabled = false
            
            if currentScore > highScore {
                highScore = currentScore
                self.highScoreOutlet.text = "High Score: \(highScore)"
            }
        }
        
        if currentScore > highScore {
            self.highScoreOutlet.text = "High Score: \(currentScore)"
        }
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        if randNum2 >= randNum1 && randNum2 >= randNum3 {
            currentScore += 1
            self.messageOutlet.text = "Nice! What color is the square above closest to?"
            self.currentScoreOutlet.text = "Current Score: \(currentScore)"
            changeColor()
        } else {
            self.messageOutlet.text = "Sorry, you lose! Your final score is \(currentScore). Play again?"
            
            redOutlet.isEnabled = false
            greenOutlet.isEnabled = false
            blueOutlet.isEnabled = false
            
            if currentScore > highScore {
                highScore = currentScore
                self.highScoreOutlet.text = "High Score: \(highScore)"
            }
        }
        
        if currentScore > highScore {
            self.highScoreOutlet.text = "High Score: \(currentScore)"
        }
    }
    
    
    
    
    
    @IBAction func newGameButton(_ sender: UIButton) {
            changeColor()
        
        self.messageOutlet.text = "What color is the square above closest to?"
        
       
        currentScore = 0
        self.currentScoreOutlet.text = "Current Score: \(currentScore)"
        redOutlet.isEnabled = true
        greenOutlet.isEnabled = true
        blueOutlet.isEnabled = true
    }
    
    func changeColor() {
        randNum1 = CGFloat.random(in: 0...1)
        randNum2 = CGFloat.random(in: 0...1)
        randNum3 = CGFloat.random(in: 0...1)
        randNum4 = CGFloat.random(in: 0...1)
        
        randomColorOutlet.backgroundColor = UIColor.init(displayP3Red: randNum1, green: randNum2, blue: randNum3, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redOutlet.isEnabled = false
        blueOutlet.isEnabled = false
        greenOutlet.isEnabled = false
    }


    
}

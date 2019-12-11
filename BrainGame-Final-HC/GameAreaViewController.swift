//
//  GameAreaViewController.swift
//  BrainGame-Final-HC
//
//  Created by Henry Calderon on 12/10/19.
//  Copyright © 2019 Henry Calderon. All rights reserved.
//

import UIKit

class GameAreaViewController: UIViewController {
    // MARK: - Parameters
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var topColorLabel: UILabel!
    @IBOutlet weak var bottomColorLabel: UILabel!
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    var difficulty: Difficulty!
    
    let colors = ["red","blue","yellow","orange","green","purple"]
    let colorDict = ["red": UIColor.red,"blue": UIColor.blue,"yellow": UIColor.yellow,"orange": UIColor.orange,"green": UIColor.green,"purple": UIColor.purple]
    
    var points:Int = 0{
        didSet{
            scoreLabel.text = "Score: \(points)"
        }
    }
    
    var timer: Timer?
    var timeLeft: Int = 60{
        didSet{
            timerLabel.text = "Time Left:\(timeLeft)"
        }
    }

    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        gameRun()
    }
    
     func time(){
         timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timerChange in
            if self.timeLeft <= 0{
                timerChange.invalidate()
            }
            self.timeLeft -= 1
            
         })
     }
    
    func gameRun(){
        if difficulty == .easy{
            gameEasy()
        }
    }
//--------------------------------------------------------------------
    func changeLabels(){
        if difficulty == .easy{
            topColorLabel.text = colors[Int.random(in: 0..<colors.count)]
            let bottomLableColor = colors[Int.random(in: 0..<colors.count)]
            bottomColorLabel.text = bottomLableColor
            bottomColorLabel.textColor = colorDict[bottomLableColor]
        }else{
            //Extremely temporary code
            topColorLabel.text = colors[Int.random(in: 0..<colors.count)]
            bottomColorLabel.text = colors[Int.random(in: 0..<colors.count)]
        }
    }
    
    func gameEasy(){
        time()
        scoreLabel.text = "Score: \(points)"
        topColorLabel.text = colors[Int.random(in: 0..<colors.count)]
        let bottomLableColor = colors[Int.random(in: 0..<colors.count)]
        bottomColorLabel.text = bottomLableColor
        bottomColorLabel.textColor = colorDict[bottomLableColor]
    }
    
    @IBAction func yesButtonPressed(_ sender: Any) {
        if topColorLabel.text == bottomColorLabel.text{
            points += 10
            changeLabels()
        }else{
            points -= 10
            changeLabels()
        }
        
    }
    
    @IBAction func noButtonPressed(_ sender: Any) {
        if topColorLabel.text != bottomColorLabel.text{
            points += 10
            changeLabels()
        }else{
            points -= 10
            changeLabels()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

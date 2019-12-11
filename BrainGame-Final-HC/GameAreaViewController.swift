//
//  GameAreaViewController.swift
//  BrainGame-Final-HC
//
//  Created by Henry Calderon on 12/10/19.
//  Copyright © 2019 Henry Calderon. All rights reserved.
//

import UIKit

class GameAreaViewController: UIViewController {
    let colors = ["red","blue",]
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var topColorLabel: UILabel!
    @IBOutlet weak var bottomColorLabel: UILabel!
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    var difficulty: Difficulty!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print(difficulty)
        gameRun()
    }
    
    func gameRun(){
        if difficulty == .easy{
            print("Hello")
        }
    }
    
    func gameEasy(){
        
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

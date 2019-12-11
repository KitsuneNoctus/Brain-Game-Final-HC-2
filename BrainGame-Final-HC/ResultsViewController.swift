//
//  ResultsViewController.swift
//  BrainGame-Final-HC
//
//  Created by Henry Calderon on 12/10/19.
//  Copyright © 2019 Henry Calderon. All rights reserved.
//

import UIKit

class ResultsViewController: GameAreaViewController {
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    var score: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        displayEnd()

        // Do any additional setup after loading the view.
    }
    
    func displayEnd(){
        let useString = "Your Score\(String(describing: self.score))"
        finalScoreLabel.text = useString
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

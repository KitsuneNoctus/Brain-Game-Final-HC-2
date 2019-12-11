//
//  ViewController.swift
//  BrainGame-Final-HC
//
//  Created by Henry Calderon on 12/10/19.
//  Copyright © 2019 Henry Calderon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var moderateButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var gameTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func goToGameArea(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "GameAreaViewController") as! GameAreaViewController
        controller.difficulty = .easy
        
        //
    self.navigationController?.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func easyButtonPressed(_ sender: Any) {
        goToGameArea()
    }
    
    @IBAction func moderateButtonPressed(_ sender: Any) {
        goToGameArea()
    }
    
    @IBAction func hardButtonPressed(_ sender: Any) {
        goToGameArea()
    }
    

}


//
//  ViewController.swift
//  TicTakToe
//
//  Created by Lan on 12/08/2015.
//  Copyright (c) 2015 TOPHACKER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var times = 0
    
    @IBOutlet weak var Box1Outlet: UIButton!
    @IBOutlet weak var Box2Outlet: UIButton!
    @IBOutlet weak var Box3Outlet: UIButton!
    @IBOutlet weak var Box4Outlet: UIButton!
    @IBOutlet weak var Box5Outlet: UIButton!
    @IBOutlet weak var Box6Outlet: UIButton!
    @IBOutlet weak var Box7Outlet: UIButton!
    @IBOutlet weak var Box8Outlet: UIButton!
    @IBOutlet weak var Box9Outlet: UIButton!
    @IBOutlet weak var Outcome: UILabel!
    
    
    var situation = [0,0,0,0,0,0,0,0,0]
    func testwinner (){
            if (situation[0] == 1 && situation[1] == 1 && situation[2] == 1)
            {
                Outcome.text = "player 1 won"
            }
            else if(situation[3] == 1 && situation[4] == 1 && situation[5] == 1)
            {
                Outcome.text = "player 1 won"
            }
            else if(situation[6] == 1 && situation[7] == 1 && situation[8] == 1)
            {
                Outcome.text = "player 1 won"
            }
            else if(situation[0] == 1 && situation[3] == 1 && situation[6] == 1)
            {
                Outcome.text = "player 1 won"
            }
            else if(situation[1] == 1 && situation[4] == 1 && situation[7] == 1)
            {
                    Outcome.text = "player 1 won"
            }
            else if(situation[2] == 1 && situation[5] == 1 && situation[8] == 1)
            {
                    Outcome.text = "player 1 won"
            }
            else if(situation[0] == 1 && situation[4] == 1 && situation[8] == 1)
            {
                Outcome.text = "player 1 won"
            }
            else if(situation[2] == 1 && situation[4] == 1 && situation[6] == 1)
            {
            Outcome.text = "player 1 won"
            }
            else if(situation[0] == 2 && situation[1] == 2 && situation[2] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[3] == 2 && situation[4] == 2 && situation[5] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[6] == 2 && situation[7] == 2 && situation[8] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[0] == 2 && situation[3] == 2 && situation[6] == 2)
            {
                    Outcome.text = "player 2 won"
            }
            else if(situation[1] == 2 && situation[4] == 2 && situation[7] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[2] == 2 && situation[5] == 2 && situation[8] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[0] == 2 && situation[4] == 2 && situation[8] == 2)
            {
                Outcome.text = "player 2 won"
            }
            else if(situation[2] == 2 && situation[4] == 2 && situation[6] == 2)
            {
            Outcome.text = "player 2 won"
            }

    
    }
    
    
    @IBAction func Box1Action(sender: UIButton) {
        times = times + 1
        
        if (times > 0 ) && (times % 2 == 0){
            Box1Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[0] = 2
            }
        else if (times > 0){
            Box1Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[0] = 1
            }
        testwinner()
        //控件的一种状态
    }

    @IBAction func Box2Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box2Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[1] = 2
        }
        else if (times > 0){
            Box2Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[1] = 1
        }
        testwinner()
    }
    @IBAction func Box3Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box3Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[2] = 2
        }
        else if (times > 0){
            Box3Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[2] = 1
        }
        testwinner()
    }
    @IBAction func Box4Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box4Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[3] = 2
        }
        else if (times > 0){
            Box4Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[3] = 1
        }
        testwinner()
    }
    @IBAction func Box5Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box5Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[4] = 2
        }
        else if (times > 0){
            Box5Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[4] = 1
        }
        testwinner()
    }
    @IBAction func Box6Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box6Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[5] = 2
        }
        else if (times > 0){
            Box6Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[5] = 1
        }
        testwinner()
    }
    @IBAction func Box7Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box7Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[6] = 2
        }
        else if (times > 0){
            Box7Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[6] = 1
        }
        testwinner()
    }
    @IBAction func Box8Action(sender: UIButton) {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0){
            Box8Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[7] = 2
        }
        else if (times > 0){
            Box8Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[7] = 1
        }
        testwinner()
    }
    @IBAction func Box9Action(sender: UIButton)  {
        times = times + 1
        if (times > 0 ) && (times % 2 == 0)  {
            Box9Outlet.setTitle("X", forState: UIControlState.Normal)
            situation[8] = 2
        }
        else if (times > 0){
            Box9Outlet.setTitle("O", forState: UIControlState.Normal)
            situation[8] = 1
        }
        testwinner()
        
    
}
}
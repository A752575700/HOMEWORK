//
//  ViewController.swift
//  HeLLO
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
    @IBOutlet weak var Label: UILabel!

    @IBOutlet weak var Name: UITextField!
    
    @IBAction func HOLA(sender: UIButton) {

        Label.text = "hello" + Name.text
    }

}


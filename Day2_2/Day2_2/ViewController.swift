//
//  ViewController.swift
//  Day2_2
//
//  Created by Lan on 12/08/2015.
//  Copyright (c) 2015 TOPHACKER. All rights reserved.
//

import UIKit



//not necessarily override all
//
class ViewController: UIViewController
        , UITableViewDataSource , UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //return Int
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        as! UITableViewCell
        cell.textLabel?.text = "hello world"
        return cell
        
        
        //return to controller
    }

}


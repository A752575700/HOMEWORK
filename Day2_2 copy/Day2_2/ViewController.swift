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
    
    var notes = [note]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var note1 =  note(title: "maicai", Description: "daxigua")
        
        var note2 =  note(title: "坐公交", Description: "daxigua")
        
        var note3 =  note(title: "去超市", Description: "daxigua")
        notes.append(note1)
        notes.append(note2)
        notes.append(note3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //return Int
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count;
        
        //他有多少你有多少
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        as! UITableViewCell
        cell.textLabel?.text = notes[indexPath.row].title
        return cell
        
        
        //return to controller
    }
    
    //点击时调用此方法;delegate的协议   ／／让他消失
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    @IBOutlet weak var TableView: UITableView!
    

     
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    //segue 不写identify时会出错
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using [segue destinationViewController].
//        var noteDetailController = segue.destinationViewController as! TableViewController2_notesDetail
//        //a object , as 转换
//        
//        var index = self.TableView.indexPathForSelectedRow()?.row
//        noteDetailController.passNote = notes[index!]
//        
//        // segue－－动画的数据结构
//        
//        
//        // Pass the selected object to the new view controller.
    
        
        
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            // Get the new view controller using [segue destinationViewController].
            if segue.identifier == "showDetail"{
                var noteDetailController = segue.destinationViewController as! TableViewController2_notesDetail
                //a object , as 转换
                
                var index = self.TableView.indexPathForSelectedRow()?.row
                noteDetailController.passNote = notes[index!]
            }else{
                
            }
            
        
    }
    
    
    
    //interface builder
    @IBAction func unwindSegue(segue:UIStoryboardSegue){
        
    }

    
    
    
    
    
    
    

}


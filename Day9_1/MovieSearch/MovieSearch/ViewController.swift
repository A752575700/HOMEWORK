//
//  ViewController.swift
//  MovieSearch
//
//  Created by Super Admin on 15/8/19.
//  Copyright (c) 2015年 Super Admin. All rights reserved.
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
    
    var cinemaName = ""
    var city = ""
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var MovieNameOutlet: UITextField!
    @IBOutlet weak var CityOutlet: UITextField!
    @IBAction func SearchAction(sender: UIButton) {
        cinemaName = MovieNameOutlet.text
        city = CityOutlet.text
        request(url, httpArg: httpArg)
    }
    var url = "http://apis.baidu.com/apistore/movie/cinema"
    var httpArg = "wd=%E5%8D%8E%E6%98%9F&location=%E5%8C%97%E4%BA%AC&rn=15&output=json&coord_type=bd09ll&out_coord_type=bd09ll"

    
    func request(httpUrl: String, httpArg: String) {
        var req = NSMutableURLRequest(URL: NSURL(string: httpUrl + "?" + httpArg)!)
        req.timeoutInterval = 6
        req.HTTPMethod = "GET"
        req.addValue(" 25ccba943cb14b1b8437e4a73132cb32", forHTTPHeaderField: "apikey")
        NSURLConnection.sendAsynchronousRequest(req, queue: NSOperationQueue.mainQueue()) {
            (response, data, error) -> Void in
            let res = response as! NSHTTPURLResponse
            
            println(res.statusCode)
            if let e = error{
                println("请求失败")
            }
            if let d = data {
                var content = NSString(data: d, encoding: NSUTF8StringEncoding)
                println(content)
                ////////////////????????????
                var jsonobject = NSJSONSerialization.JSONObjectWithData(d, options: NSJSONReadingOptions.AllowFragments, error: nil) as! NSDictionary
                var retDictionary = jsonobject["result"] as! NSArray
                var dict = retDictionary[0] as! NSDictionary
                println(dict["name"]!)
                self.ResultLabel.text = dict["name"] as! String
    
            }
        }
    }
    
    

}


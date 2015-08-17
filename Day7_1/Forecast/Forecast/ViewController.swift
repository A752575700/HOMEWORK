//
//  ViewController.swift
//  Forecast
//
//  Created by Super Admin on 15/8/17.
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
    
    
    
    @IBOutlet weak var TextFieldOutline: UITextField!

    @IBOutlet weak var SearchOutline: UIButton!

    @IBAction func SearchAction(sender: UIButton) {
        
        var cityname = TextFieldOutline.text
        var url = "http://apis.baidu.com/apistore/weatherservice/weather"
        var httpArg = "citypinyin=\(cityname)"
        request(url, httpArg: httpArg)
    }
    
    
    
    

    func  request(httpUrl: String, httpArg: String) {
        var req = NSMutableURLRequest(URL: NSURL(string: httpUrl + "?" + httpArg)!)
        req.timeoutInterval = 6
        req.HTTPMethod = "GET"
        req.addValue("35a3ce0261634a931633d96eb8e58d78", forHTTPHeaderField: "apikey")
        NSURLConnection.sendAsynchronousRequest(req, queue: NSOperationQueue.mainQueue()) {
            (response, data, error) -> Void in
            let res = response as! NSHTTPURLResponse
            println(res.statusCode)
            if let e = error{
                println("请求失败")
            }
            if let d = data {
                var content = NSString(data: d, encoding: NSUTF8StringEncoding)
                content
                println(content)
            }
        }
    }
    

    
    
    
}


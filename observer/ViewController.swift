//
//  ViewController.swift
//  observer
//
//  Created by EricYang on 2016/7/22.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.inactive), name:NSNotification.Name.UIApplicationWillResignActive, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.active), name:NSNotification.Name.UIApplicationDidBecomeActive, object: nil)
        
        
        print ("eric: load view \n")
    
        
    }
    

    func inactive(){
        imageview.image = UIImage(named: "A1")
    }
    
    
    func active(){
        label.text = "\(data.state)"
        print("eric: noti active() \(data.state) \n")
        imageview.image = UIImage(named: "Q1")

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    


}


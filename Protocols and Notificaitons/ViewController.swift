//
//  ViewController.swift
//  Protocols and Notificaitons
//
//  Created by Zabeehullah Qayumi on 9/20/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

let changeButton = "changeButton"
let resetButton = "resetButton"

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    let change = Notification.Name(rawValue: changeButton)
    let reset = Notification.Name(rawValue: resetButton)
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createObservers()
    }
    
    func createObservers(){
        
        NotificationCenter.default.addObserver(self, selector:
            #selector(ViewController.change(notification:)), name: change, object: nil)
        
        NotificationCenter.default.addObserver(self, selector:
            #selector(ViewController.reset(notification:)), name: reset, object: nil)

    }
    
    
    
    
    @objc func change(notification : NSNotification){
        
        btn1.backgroundColor = UIColor.red
        btn2.backgroundColor = UIColor.green
        btn3.backgroundColor = UIColor.yellow
        btn4.backgroundColor = UIColor.blue
        btn5.backgroundColor = UIColor.darkGray
        
    }
    
   @objc func reset( notification : NSNotification){
        
        btn5.backgroundColor = UIColor.lightGray
        btn4.backgroundColor = UIColor.lightGray
        btn3.backgroundColor = UIColor.lightGray
        btn2.backgroundColor = UIColor.lightGray
        btn1.backgroundColor = UIColor.lightGray
        
    }
    
    
    @IBAction func changeButtonPressed(_ sender: Any) {
        NotificationCenter.default.post(name: change, object: nil)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        NotificationCenter.default.post(name: reset, object: nil)
    }
    
}


//
//  SecondViewController.swift
//  Protocols and Notificaitons
//
//  Created by Zabeehullah Qayumi on 9/20/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, canSend {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func canSendText(text: String) {
        textLabel.text = text
        
    }


    @IBAction func goToParentPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToParent", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToParent"{
            let destinationVC = segue.destination as! ThirdViewController
            destinationVC.delegate = self
        }
    }
    
}

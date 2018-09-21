//
//  ThirdViewController.swift
//  Protocols and Notificaitons
//
//  Created by Zabeehullah Qayumi on 9/20/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit
protocol canSend {
    func canSendText(text : String)
}

class ThirdViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var delegate : canSend?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        let newText = textField.text!
        delegate?.canSendText(text: newText)
        self.dismiss(animated: true, completion: nil)
        
    }
    


}

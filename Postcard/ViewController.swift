//
//  ViewController.swift
//  Postcard
//
//  Created by Mario Vargas on 9/27/14.
//  Copyright (c) 2014 Qanta Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageTextField.resignFirstResponder()
        messageTextField.text = ""
        sendButtonPressed.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}


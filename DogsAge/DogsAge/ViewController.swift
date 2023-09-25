//
//  ViewController.swift
//  DogsAge
//
//  Created by english on 2023-09-18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtAgeInYears: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func btnCheckItOutTouchUpInside(_ sender: Any) {
        if let age = Int(txtAgeInYears.text!){
            
            if (age <= 0 || age > 20){
                Toast.ok(view: self, title: "Ooops!", message: "Please enter an age between 1 and 20 years")
                return
            } else {
                let dogsAge = age * 7
                lblResult.text = "If your \(age) dog were a human, he/she would have \(dogsAge) years old."
                lblResult.isHidden = false
            }
        } else {
            Toast.ok(view: self, title: "Ooops!", message: "Please enter a valid age!!!")
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        lblResult.isHidden = true
        
    }
    @IBAction func txtAgeEditingChanged(_ sender: Any) {
        lblResult.isHidden = true;
    }
}


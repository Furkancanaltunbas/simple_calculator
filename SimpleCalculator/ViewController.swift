//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by FurkanCan on 30/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var labelError: UILabel!
    
    var errorTwo = "please enter a valid number in the second space !"
    var errorOne = "please enter a valid number in the first blank !"
    var resultt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField + secondTextField
                result.text = String(resultt)
                labelError.text=""
                           
            }else{
                labelError.text=errorTwo
        }
            
        }
        else{
            labelError.text=errorOne
        }
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField - secondTextField
                result.text = String(resultt)
                labelError.text=""
            }else{
                labelError.text=errorTwo
        }
           
        }
        else{
            labelError.text=errorOne
        }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField * secondTextField
                result.text = String(resultt)
                labelError.text=""
            }else{
                labelError.text=errorTwo
        }
            
        }
        else{
            labelError.text=errorOne
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField / secondTextField
                result.text = String(resultt)
                labelError.text=""
            }else{
                labelError.text=errorTwo
        }
            
        }
        else{
            labelError.text=errorOne
        }
    }
    
    
}


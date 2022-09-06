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
                           
            }else{
                errorMesaj(messageInput: errorTwo)
        }
            
        }
        else{
            errorMesaj(messageInput: errorOne)
        }
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField - secondTextField
                result.text = String(resultt)
            }else{
                errorMesaj(messageInput: errorTwo)
        }
           
        }
        else{
            errorMesaj(messageInput: errorOne)
        }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField * secondTextField
                result.text = String(resultt)
            }else{
                errorMesaj(messageInput: errorTwo)
        }
            
        }
        else{
            errorMesaj(messageInput: errorOne)
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstTextField = Int(firstTextField.text!){
            if let secondTextField = Int(secondTextField.text!) {
                           resultt = firstTextField / secondTextField
                result.text = String(resultt)
            }else{
                errorMesaj(messageInput: errorTwo)
        }
            
        }
        else{
            errorMesaj(messageInput: errorOne)
        }
    }
    
    func errorMesaj(messageInput:String){
        let alert = UIAlertController(title: "Error!", message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}


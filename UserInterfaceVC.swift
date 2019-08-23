//
//  ViewController.swift
//  UserInterface
//
//  Created by Roman Emperor on 8/22/19.
//  Copyright © 2019 Roman Emperor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK:- Outlets
    @IBOutlet weak var justLabel: UILabel!
    @IBOutlet weak var userInputTextField: UITextField!
    
    //Mark:- ViewDidiLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegation for textfield
        userInputTextField.delegate = self
        
        // To make textfield the first responder right after view of the application is loaded
        userInputTextField.becomeFirstResponder()
        
        
    }
    
    
    //MARK:- User Events
    @IBAction func labelChangingButton(_ sender: Any) {
        // trigerring the label change by calling function when button pressed
        labelChanges()
        
        userInputTextField.resignFirstResponder()
    }
    
    // creating a function to change label
    func labelChanges(){
        
        
        // ForceUnwrapping !!
        //justLabel.text = userInputTextField.text!
        
        // Unwrapping optional textfield input Gracefully
        if let label = userInputTextField.text{
            if (label.isEmpty){
         justLabel.text = "Enter your name kid"
            }else{
                justLabel.text = "Hello there \(label) !!"
        

            }
        }
     
    }

    // to dismiss the keyboard when user clicks on blank screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // resign the first responder
        userInputTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        view.endEditing(true)
        labelChanges()
        return false
    }
    


}


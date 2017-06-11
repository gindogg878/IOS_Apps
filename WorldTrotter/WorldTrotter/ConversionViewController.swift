//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Gino T on 11/16/16.
//  Copyright © 2016 Gino T. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController{
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBAction func dismissKeyboard(sender:AnyObject){
        textField.resignFirstResponder()    
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField:UITextField){
        if let text = textField.text, let value = Double(text){
            fahrenheitValue = value
        }
        else{
            self.fahrenheitValue = nil
        }
    }
    
    var fahrenheitValue: Double?{
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double?{
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            
            return nil
        }
    }
    
    func updateCelsiusLabel(){
        if let value = celsiusValue{
            celsiusLabel.text = NSString(format: "%.2f", value)as String
        }
        else{
            celsiusLabel.text = "???"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController loaded its view")
    }
    
    
}
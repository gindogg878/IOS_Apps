//
//  ViewController.swift
//  Character Name Counter
//
//  Created by Gino T on 1/2/17.
//  Copyright © 2017 Gino T. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblTotalChar: UILabel!
    var nameData = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalculate(sender: UIButton) {
        calculate()
    }

    @IBAction func btnClear(sender: UIButton) {
        clear()
    }
    
    @IBAction func txtNameAction(sender: UITextField) {
        calculate()
    }
    
    func calculate(){
        nameData = txtName.text!
        printChar()
    }
    
    func clear(){
        txtName.text=""
        lblTotalChar.text="0"
        hideKeyboard()
        
    }
    
    func printChar(){
        var nameArray = Array(nameData.characters)
        lblTotalChar.text = "\(nameArray.count)"
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
    func hideKeyboard(){
       txtName.resignFirstResponder()   
    }
    
}


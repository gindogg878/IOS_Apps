//
//  ViewController.swift
//  WordReverser
//
//  Created by Gino T on 1/27/17.
//  Copyright © 2017 Gino T. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate{
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblReverseWord: UILabel!
    var nameData = ""
    var reverseWord = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReverse(sender: UIButton) {
        reverseTheWord()
    }
    
    @IBAction func btnClear(sender: UIButton) {
        clear()
    }
    
    func reverseTheWord() {
        nameData = txtName.text!
        reverseWord = String(nameData.characters.reverse())
        hidekeyboard()
        printreverseWord()
    
    }
    
    func clear(){
        txtName.text = ""
        lblReverseWord.text = "Word"
        hidekeyboard()
    }
    
    func printreverseWord(){
        lblReverseWord.text="\(reverseWord.lowercaseString)"
    }
    
    
    func hidekeyboard(){
        txtName.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hidekeyboard()
    }


}


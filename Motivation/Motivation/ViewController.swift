//
//  ViewController.swift
//  Motivation
//
//  Created by Gino T on 2/15/17.
//  Copyright © 2017 Gino T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var btnAnotherQuote: UIButton!
    var quote = ["You can get it done!","I believe in you!","Carpe Diem"]
    var numberQuote = 0
    var buttonText = ["Another Quote","Inspiration", "Get it Done"]
    var numberButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAnotherQuoteACTION(sender: UIButton) {
        selectQuote()
        changeButtonText()
    }
    
    func selectQuote(){
        printQuote()
    }
    
    func printQuote(){
        
    }
    
    func changeButtonText(){
        
    }
    

}


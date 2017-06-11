//
//  ViewController.swift
//  tipcalc
//
//  Created by Gino T on 12/28/16.
//  Copyright © 2016 Gino T. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTipPercent: UITextField!
    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTipTotal: UILabel!
    
    var mealcost = ""
    var tipPercentage = ""
    var totalTip : Float = 0.0
    var totalMealCost : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnCalculate(sender: UIButton) {
        calculateTip()
        
    }

    @IBAction func btnClear(sender: UIButton) {
        clear()
    }
    
    func calculateTip(){
        mealcost = txtMealCost.text!
        tipPercentage = txtTipPercent.text!
        
        let fmealCost = Float(mealcost)
        let ftipPercentage = Float(tipPercentage)
        totalTip = (fmealCost! * (ftipPercentage!/100))
        totalMealCost = (fmealCost! + totalTip)
        hideKeyboard()
        printTip()
        
    }
    
    func printTip(){
        let formatTip = String(format: "%0.2f",totalTip)
        let formatTotal = String(format : "%0.2f", totalMealCost)
        lblTip.text = "Tip: $ \(formatTip)"
        lblTipTotal.text = "$ \(formatTotal)"

    }
    
    func clear(){
        txtMealCost.text = ""
        txtTipPercent.text = ""
        lblTip.text = "Tip: $0.00"
        lblTipTotal.text = "$0.00"
        hideKeyboard()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
    func hideKeyboard(){
        txtMealCost.resignFirstResponder()
        txtTipPercent.resignFirstResponder()
    }

}


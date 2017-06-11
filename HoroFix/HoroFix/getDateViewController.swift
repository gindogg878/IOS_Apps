//
//  getDateViewController.swift
//  HoroFix
//
//  Created by Gino T on 12/13/16.
//  Copyright © 2016 Gino T. All rights reserved.
//

import UIKit

class getDateViewController:UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var userDate: UITextField!
    
    
    
    func initializeTextFields(){
        userDate.delegate = self
        userDate.keyboardType = UIKeyboardType.NumbersAndPunctuation
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTextFields()
    }
    
    func textField(textField: UITextField,shouldChangeCharactersInRange range: NSRange,
        replacementString string: String)-> Bool{
            if string.characters.count == 0 {
                return true
            }
            
            let currentText = textField.text ?? ""
            let prospectiveText = (currentText as NSString).stringByReplacingCharactersInRange(range, withString: string)
            switch textField
            {
                case userDate:
                return prospectiveText.containsOnlyCharactersIn("0123456789") &&
                    prospectiveText.characters.count <= 4
                /*case userDate:
                return prospectiveText.isNumeric() &&
                    prospectiveText.characters.count <= 4*/
                
                default:
                return true
            }
    }
    
    
    
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "passDate"
            {
                let pd = (segue.destinationViewController) as! returnSignViewController
                
                pd.date = (self.userDate.text)!
                
            
            }
            
            
        }
    
    
}
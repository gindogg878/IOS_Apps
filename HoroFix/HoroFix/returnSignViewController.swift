//
//  returnSignViewController.swift
//  HoroFix
//
//  Created by Gino T on 12/13/16.
//  Copyright © 2016 Gino T. All rights reserved.
//

import UIKit

class returnSignViewController: UIViewController {
    
    @IBOutlet weak var dateCapture: UILabel!
    var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let dateInt = Int(date)
        {
        
        switch dateInt{
        case 0321...0419:
            dateCapture.text = " Based on your birthday you are an Aries!"
        case 0420...0520:
            dateCapture.text = " Based on your birthday you are a Taurus!"
        case 0521...0621:
            dateCapture.text = "Based on your birthday you are a Gemini!"
        case 0622...0722:
            dateCapture.text = " Based on your birthday you are a Cancer!"
        case 0723...0822:
            dateCapture.text = " Based on your birthday you are a Leo!"
        case 0823...0922:
            dateCapture.text = " Based on your birthday you are a Virgo!"
        case 0923...1023:
            dateCapture.text = " Based on your birthday you are a Libra!"
        case 1024...1121:
            dateCapture.text = " Based on your birthday you are a Scorpio!"
        case 1122...1221:
            dateCapture.text = " Based on your birthday you are a Sagittarius!"
        case 1222...1231:
            dateCapture.text = " Based on your birthday you are a Capricorn!"
        case 0101...0119:
            dateCapture.text = " Based on your birthday you are a Capricorn!"
        case 0120...0218:
            dateCapture.text = " Based on your birthday you are an Aquarius!"
        case 0219...0320:
            dateCapture.text = " Based on your birthday you are a Pisces!"
        default:
            dateCapture.text = "Unknown error try typing in your birthdate in 2 digit month and 2 digit day, no year."
            }
        }
        //dateCapture.text = "Your birthdate is " + date
    
        
    }
    
}

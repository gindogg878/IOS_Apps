//
//  StringUtils.swift
//

import Foundation

extension String {
    
    func containsOnlyCharactersIn(matchCharacters: String) -> Bool
    {
        let disallowedCharacterSet = NSCharacterSet(charactersInString: matchCharacters).invertedSet
        return self.rangeOfCharacterFromSet(disallowedCharacterSet) == nil
    }
    
    
    

    func isNumeric() -> Bool
    {
        let scanner = NSScanner(string: self)
        
        scanner.locale = NSLocale.currentLocale()
        
        return scanner.scanDecimal(nil) && scanner.atEnd
    }
    
}
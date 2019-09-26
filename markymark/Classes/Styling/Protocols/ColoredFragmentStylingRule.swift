//
//  ColoredFragmentStylingRule.swift
//
//  Created by Dominik Majda on 26/09/2019.
//

import UIKit

public protocol ColoredFragmentStylingRule : ItemStyling {
    var textColor : UIColor? { get }
    var isColored : Bool { get }
}

extension ItemStyling {
    
    func shouldFontBeColored() -> Bool {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? ColoredFragmentStylingRule {
                return styling.isColored
            }
        }
        
        return false
    }
    
    func neededFragmentTextColor() -> UIColor? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? ColoredFragmentStylingRule, styling.textColor != nil {
                return styling.textColor
            }
        }
        
        return nil
    }
}

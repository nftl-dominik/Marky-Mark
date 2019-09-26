//
//  ColoredFragmentStyling.swift
//
//  Created by Dominik Majda on 26/09/2019.
//

import UIKit

public struct ColoredFragmentStyling: ItemStyling, ColoredFragmentStylingRule, BaseFontStylingRule {
    
    public var parent : ItemStyling? = nil
    
    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {
        
        return markDownItem is ColoredFragmentMarkDownItem
    }
    
    public var isColored = true
    public var baseFont : UIFont? = nil
    public var textColor: UIColor? = .blue
    
    public init(){}
}

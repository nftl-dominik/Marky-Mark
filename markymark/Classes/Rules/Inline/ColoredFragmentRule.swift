//
//  ColoredFragmentRule.swift
//
//  Created by Dominik Majda on 26/09/2019.
//

import UIKit

open class ColoredFragmentRule: InlineRegexRule {
    
    public init() {}
    
    open var expression = NSRegularExpression.expressionWithPattern("(\\^{2})(.+?)(\\^{2})")
    
    //MARK: Rule
    
    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let content = lines.first?.subStringWithExpression(expression, ofGroup: 2)
        return ColoredFragmentMarkDownItem(lines: lines, content: content ?? "")
    }
}

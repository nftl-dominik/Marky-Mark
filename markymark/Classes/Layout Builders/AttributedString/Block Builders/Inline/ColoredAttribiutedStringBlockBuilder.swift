//
//  ColoredAttribiutedStringBlockBuilder.swift
//
//  Created by Dominik Majda on 26/09/2019.
//

import UIKit

class ColoredFragmentAttributedStringBlockBuilder: ContainerAttributedStringBlockBuilder {
    
    //MARK: LayoutBuilder
    
    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return ColoredFragmentMarkDownItem.self
    }
}


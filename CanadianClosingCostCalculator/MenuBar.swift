//
//  MenuBar.swift
//  CanadianClosingCostCalculator
//
//  Created by Chris Wong on 2016-07-10.
//  Copyright © 2016 Chris Wong. All rights reserved.
//

import UIKit

class MenuBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.rgb(230, green: 32, blue: 31)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

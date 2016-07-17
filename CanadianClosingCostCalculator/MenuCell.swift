//
//  MenuCell.swift
//  CanadianClosingCostCalculator
//
//  Created by Chris Wong on 2016-07-16.
//  Copyright © 2016 Chris Wong. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet var iconImage: UIImageView!
    
    override var selected: Bool {
        didSet {
            iconImage.tintColor = selected ? UIColor.whiteColor() : UIColor.rgb(91, green: 14, blue: 13)
        }
    }
        
}

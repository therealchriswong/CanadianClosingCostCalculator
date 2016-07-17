//
//  MenuBarDataSource.swift
//  CanadianClosingCostCalculator
//
//  Created by Chris Wong on 2016-07-13.
//  Copyright © 2016 Chris Wong. All rights reserved.
//

import UIKit

class MenuBarDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var menuBarCollectionView: UICollectionView
    let imageNames = ["home", "trending"]
    
    init(menuBar: UICollectionView) {
        self.menuBarCollectionView = menuBar
    }
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("menuBarCellId", forIndexPath: indexPath) as! MenuCell
        
        print(imageNames[indexPath.item])
        
        cell.iconImage.image = UIImage(named: imageNames[indexPath.item])?.imageWithRenderingMode(.AlwaysTemplate)
        cell.tintColor = UIColor.rgb(91, green: 14, blue: 13)

        return cell
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(menuBarCollectionView.frame.width / 2, menuBarCollectionView.frame.height)
    }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return 0
    }
    
}

//
//  MenuBarDataSource.swift
//  CanadianClosingCostCalculator
//
//  Created by Chris Wong on 2016-07-13.
//  Copyright © 2016 Chris Wong. All rights reserved.
//

import UIKit

class MenuBarDataSource: NSObject, UICollectionViewDataSource {

//    var menuBarCollectionView: UICollectionView
//    
//    init(menuBar: UICollectionView) {
//        self.menuBarCollectionView = menuBar
//        
//        print("hi")
//    }
    

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("menuBarCellId", forIndexPath: indexPath)
        
        return cell
    }
    

    
}

//
//  HomeController.swift
//  CanadianClosingCostCalculator
//
//  Created by Chris Wong on 2016-07-09.
//  Copyright © 2016 Chris Wong. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var menuBarCollectionView: UICollectionView!
    
    var dataSource: MenuBarDataSource?
    
    var moreMenu = MoreMenu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.translucent = false
        
        setupMenuBar()
        
    }
    
    // MARK: UICollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellId", forIndexPath: indexPath)
        
        return cell
    }
    
    // MARK: UICollectionViewDelegateFlowLayout Delegate
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(view.frame.width, 200)

    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    // MARK: IBAction
    @IBAction func moreButtonItem(sender: UIBarButtonItem) {
        
        moreMenu.showMenu()
        
    }
    // MARK: Helper Functions
    
    func setupMenuBar(){
        dataSource = MenuBarDataSource(menuBar: menuBarCollectionView)
        
        self.menuBarCollectionView.dataSource = dataSource
        self.menuBarCollectionView.delegate = dataSource

        menuBarCollectionView.backgroundColor = UIColor.rgb(230, green: 32, blue: 31)
        
        // Highlight the first icon
        let selectedIndexPath = NSIndexPath(forItem: 0, inSection: 0)
        menuBarCollectionView.selectItemAtIndexPath(selectedIndexPath, animated: false, scrollPosition: .None)
    }
    
}

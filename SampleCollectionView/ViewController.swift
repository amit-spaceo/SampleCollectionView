//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by Hitesh on 1/3/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionImages: UICollectionView!
    
    let layoutCell: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutCell.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layoutCell.itemSize = CGSize(width: 90, height: 90)
        self.collectionImages?.collectionViewLayout = layoutCell
    }
    
    
    //MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 101
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        configureCell(cell, forItemAtIndexPath: indexPath)
        
        return cell
    }
    
    func configureCell(cell: UICollectionViewCell, forItemAtIndexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.blackColor()
        //3
        let imgView = UIImageView(frame: CGRectMake(0, 0, layoutCell.itemSize.width, layoutCell.itemSize.height))
        imgView.contentMode = .ScaleAspectFit
        if forItemAtIndexPath.row%3 == 0 {
            imgView.image = UIImage(named: "3")
        } else if forItemAtIndexPath.row%2 == 0 {
            imgView.image = UIImage(named: "2")
        } else {
            imgView.image = UIImage(named: "1")
        }
        cell.addSubview(imgView)
        
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let view =  collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "Cell", forIndexPath: indexPath) as UICollectionReusableView
        return view
    }
    
    //MARK: UICollectionViewDelegate
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


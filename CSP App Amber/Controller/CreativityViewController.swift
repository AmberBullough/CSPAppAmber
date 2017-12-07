//
//  CreativityViewController.swift
//  CSP App Amber
//
//  Created by Bullough, Amber on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class CreativityViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInserts = UIEdgeInsets(top:  50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "cute"),
            UIImage(named: "Arty"),
            UIImage(named: "Ia"),
            UIImage(named: "Melanie"),
            UIImage(named: "Sam"),
            UIImage(named: "Ollie"),
            UIImage(named: "1x binary"),
            UIImage(named: "Badger"),
            UIImage(named: "tree pic")
            ]
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
       didSet
       {
        var indexPaths = [IndexPath]()
        if let largePhotoIndexPath = largePhotoIndexPath
        {
            indexPaths.append(largePhotoIndexPath)
        }
        if let oldValue = oldValue
        {
            indexPaths.append(oldValue)
        }
        
        collectionView?.performBatchUpdates(
            {
                self.collectionView?.reloadItems(at: indexPaths)
                
        })
        {
            completed in
            if let largePhotoIndexPath = self.largePhotoIndexPath
            {
                self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                  at: .centeredVertically,
                                                  animated: true)
            }
        }
    }
}

    //Mark: Lifeycle methods
    override public func viewDidLoad()
    {
        super.viewDidLoad()
}
    //Mark: -UICollection View Methods
    
    override public func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    override public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> UICollectionViewCell
    {
        return artSelection.count
        
    }
    
    
    override public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgrounColor = .orange
        artCell.imageView.image = artSelection[indexPath.row]
        artCell.imageName.text = "My Art"
    }
    }
    
    
    
    
    
    
    
    
    
}

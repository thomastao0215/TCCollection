//
//  TVC.swift
//  TCCollection
//
//  Created by Tao Jiachen on 16/7/31.
//  Copyright © 2016年 deZrt Inc. All rights reserved.
//

import UIKit

class TVC: UITableViewCell {

    @IBOutlet weak var Label:UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
}

extension TVC {
    
    func setCollectionViewDataSourceDelegate<D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>(dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.setContentOffset(collectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
        collectionView.reloadData()
    }
    
    var collectionViewOffset: CGFloat {
        set {
            collectionView.contentOffset.x = newValue
        }
        
        get {
            return collectionView.contentOffset.x
        }
    }
}

//
//  ViewController.swift
//  TCCollection
//
//  Created by Tao Jiachen on 16/7/31.
//  Copyright © 2016年 deZrt Inc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    private var interest = Interests.createInterests()
    var identities = [[String]]()
    
    var storedOffsets = [Int: CGFloat]()
    let footer = "hiufqweui"
    let imageView = UIImageView(image: (UIImage(named: "IMG_9581")))
    func setlayoutHeaderView()
    {
        imageView.contentMode = .ScaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.width * 0.75)
        tableView.tableHeaderView = imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        setlayoutHeaderView()
        identities = [["A","B","C","D"],["A","B","C","D"],["A","B","C","D"]]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interest.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        guard let tableViewCell = cell as? TVC else { return }
        
        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
        tableViewCell.collectionViewOffset = storedOffsets[indexPath.row] ?? 0
    }
    
    override func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        guard let tableViewCell = cell as? TVC else { return }
        
        storedOffsets[indexPath.row] = tableViewCell.collectionViewOffset
    }


}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interest[collectionView.tag].count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CVC
        
        cell.ImageView.image = interest[collectionView.tag][indexPath.item].featuredImage
        cell.Clabel.text = interest[collectionView.tag][indexPath.item].title
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Collection view at row \(collectionView.tag) selected index path \(indexPath.item)")
        let vcName = identities[collectionView.tag][indexPath.item]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
}

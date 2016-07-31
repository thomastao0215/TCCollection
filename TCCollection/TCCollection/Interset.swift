//
//  Interset.swift
//  test
//
//  Created by Tao Jiachen on 16/7/30.
//  Copyright © 2016年 deZrt Inc. All rights reserved.
//

import Foundation
import UIKit
class Interests
{
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage :UIImage!
    
    init(title: String,description: String ,featuredImage:UIImage!)
    {
        self.title = title
        self.description = description
        self.featuredImage  = featuredImage
        numberOfPosts = 1
        numberOfMembers = 1
    }
    static func createInterests() -> [[Interests]]
    {
        return [
            [
            Interests(title: "I love you", description: "I love  so much that my heart is full", featuredImage:UIImage(named: "IMG_9567")!),
            Interests(title: "I love her", description: "I love you ch that my heart is full", featuredImage:UIImage(named: "IMG_9568")!),
            Interests(title: "I love him", description: "I love you so much y heart is full", featuredImage:UIImage(named: "IMG_9570")!),
            Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9572")!),
            ],
            [
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9574")!),
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9575")!),
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9576")!),
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9577")!)]
            ,
            [
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9578")!),
                Interests(title: "I love that", description: "I love you so much that my hearfull", featuredImage:UIImage(named: "IMG_9579")!),
                Interests(title: "I love him", description: "I love you so much y heart is full", featuredImage:UIImage(named: "IMG_9580")!)]
        ]
    }
    
}
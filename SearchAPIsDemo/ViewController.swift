//
//  ViewController.swift
//  SearchAPIsDemo
//
//  Created by XHY on 15/11/5.
//  Copyright © 2015年 HY. All rights reserved.
//

import UIKit
import CoreSpotlight

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createSearchableIndex()
    }
    
    func createSearchableIndex() {
        
        // 创建一个宠物 肉肉
        let rourou = Pet(name: "肉肉", pic: UIImage(named: "rourou")!)
        
        // 可搜索的item集合
        var searchableItems = [CSSearchableItem]()
        
        // 创建搜索属性
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: "test")
        attributeSet.title = rourou.name
        attributeSet.contentDescription = "肉肉是一只可爱的加菲猫 “喵”"
        attributeSet.thumbnailData = UIImagePNGRepresentation(rourou.pic)
        
        // 创建可搜索的item
        let item = CSSearchableItem(uniqueIdentifier: rourou.name, domainIdentifier: "com.xhy.test", attributeSet: attributeSet)
        searchableItems.append(item)
        
        // 将可搜索的item集合添加都索引中
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems(searchableItems, completionHandler: {
            error -> Void in
            if error != nil {
                print(error?.localizedDescription)
            }
        
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


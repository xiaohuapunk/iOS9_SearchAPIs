//
//  Pet.swift
//  SearchAPIsDemo
//
//  Created by XHY on 15/11/5.
//  Copyright © 2015年 HY. All rights reserved.
//

import UIKit

class Pet: NSObject {
    var name: String
    var pic: UIImage
    
    init(name: String, pic: UIImage) {
        self.name = name
        self.pic = pic
    }
}

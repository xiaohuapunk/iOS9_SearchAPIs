//
//  AppDelegate.swift
//  SearchAPIsDemo
//
//  Created by XHY on 15/11/5.
//  Copyright © 2015年 HY. All rights reserved.
//

import UIKit
import CoreSpotlight

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool {
        // 拿到搜索的 标示 “肉肉”
        let friendID = userActivity.userInfo?["kCSSearchableItemActivityIdentifier"] as! String
        
        print(friendID)
        
        return true
    }


}


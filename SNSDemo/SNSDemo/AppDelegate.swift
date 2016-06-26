//
//  AppDelegate.swift
//  SNSDemo
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit
import SNSKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var appName: String {
        let info = NSBundle.mainBundle().localizedInfoDictionary ?? NSBundle.mainBundle().infoDictionary
        if let name = info?[kCFBundleNameKey as String] as? String {
            return name
        }
        return "SNSDemo"
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        SNSPlatformManager.addPlatform(.Weibo, appID: "", redirectURI: nil, name: NSLocalizedString("微博", comment: ""), logo: UIImage(named: "SinaWeibo")!, description: appName)
        SNSPlatformManager.addPlatform(.Wechat, appID: "", redirectURI: nil, name: NSLocalizedString("微信", comment: ""), logo: UIImage(named: "WechatSession")!, description: appName)
        SNSPlatformManager.addPlatform(.WechatMoments, appID: "", redirectURI: nil, name: NSLocalizedString("朋友圈", comment: ""), logo: UIImage(named: "WechatMoments")!, description: appName)
        SNSPlatformManager.addPlatform(.WechatSession, appID: "", redirectURI: nil, name: NSLocalizedString("微信好友", comment: ""), logo: UIImage(named: "WechatSession")!, description: appName)
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


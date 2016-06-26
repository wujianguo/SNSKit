//
//  SNSPlatformWeibo.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit


class SNSPlatformWeibo: SNSPlatformBase {
    
    var uuid: String?
    
    override init(appID: String, redirectURI: NSURL?, name: String, logo: UIImage, description: String) {
        super.init(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
    }
    
    override func isAppInstalled() -> Bool {
        return true
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        uuid = NSUUID().UUIDString
    }
    
    override func performActivity() {
        UIApplication.sharedApplication().openURL(NSURL(string: "weibosdk://request?id=\(uuid!)&sdkversion=003013000")!)
    }
}

extension SNSPlatformWeibo: SNSPlatformLoginable {
    
    func login(succ: SNSPlatformLoginCompletion?, fail: SNSPlatformFailureCompletion?) {

    }
    
    func logout(completion: SNSPlatformFailureCompletion?) {
        
    }
}

extension SNSPlatformWeibo: SNSPlatformShareable {
    func share(activityItems: [AnyObject]) -> Bool {
        return false
    }
}
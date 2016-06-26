//
//  SNSPlatformWechat.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit

class SNSPlatformWechat: SNSPlatformBase {
    
    var authChecksum = ""
    var loginSuccCompletion: SNSPlatformLoginCompletion?
    var loginFailCompletion: SNSPlatformFailureCompletion?
    var logoutCompletion: SNSPlatformFailureCompletion?
    
    override init(appID: String, redirectURI: NSURL?, name: String, logo: UIImage, description: String) {
        super.init(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)

    }
    
    override func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        return false
    }
    
    override func isAppInstalled() -> Bool {
        return true
    }
}

extension SNSPlatformWechat: SNSPlatformLoginable {
    func login(succ: SNSPlatformLoginCompletion?, fail: SNSPlatformFailureCompletion?) {

    }
    
    func logout(completion: SNSPlatformFailureCompletion?) {
        
    }
}

extension SNSPlatformWechat: SNSPlatformPayable {
    
}
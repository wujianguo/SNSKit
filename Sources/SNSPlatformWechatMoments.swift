//
//  SNSPlatformWechatMoments.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit

class SNSPlatformWechatMoments: SNSPlatformWechat {
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return false
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        
    }
    
    override func performActivity() {
        UIApplication.sharedApplication().openURL(NSURL(string: "weixin://app/\(appID)/sendreq/?")!)
    }
}

extension SNSPlatformWechatMoments: SNSPlatformShareable {
    func share(activityItems: [AnyObject]) -> Bool {
        return false
    }

}
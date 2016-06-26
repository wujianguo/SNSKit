//
//  SNSPlatformManager.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/25.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit

public enum SNSPlatformType {
    case None
    case Weibo
    case Wechat
    case WechatSession
    case WechatMoments
    case QQ
    case Alipay
}

public class SNSPlatformManager {
    
    public static let sharedInstance = SNSPlatformManager()
    public var availablePlatforms: Array<SNSPlatformBase> = []
    public var shareablePlatforms: Array<SNSPlatformBase> {
        return availablePlatforms.filter { $0 is SNSPlatformShareable }
    }
    private init() {}
    
    public static func addPlatform(type: SNSPlatformType, appID: String, redirectURI: NSURL?, name: String, logo: UIImage, description: String) {
        var platform: SNSPlatformBase?
        switch type {
        case .Weibo:
            platform = SNSPlatformWeibo(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        case .Wechat:
            platform = SNSPlatformWechat(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        case .WechatMoments:
            platform = SNSPlatformWechatMoments(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        case .WechatSession:
            platform = SNSPlatformWechatSession(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        case .QQ:
            platform = SNSPlatformQQ(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        case .Alipay:
            platform = SNSPlatformAlipay(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
        default:
            return
        }
        sharedInstance.availablePlatforms.append(platform!)
    }
    
    static func getPlatform(type: SNSPlatformType) -> SNSPlatformBase? {
        return nil
    }
    
    static func share(activityItems: [AnyObject], to: SNSPlatformType) -> Bool {
        if let platform = sharedInstance.availablePlatforms.filter({$0.platformType == to}).first as? SNSPlatformShareable {
            return platform.share(activityItems)
        }
        return false
    }
}


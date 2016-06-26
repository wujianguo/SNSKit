//
//  SNSPlatformBase.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit


enum SNSPlatformGender: Int {
    case Male = 0
    case Female
    case Unknow
    
    var description: String {
        switch self {
        case .Male:
            return "male"
        case .Female:
            return "female"
        case .Unknow:
            return "unknow"
        }
    }
}

extension Int {
    var snsGender: SNSPlatformGender {
        switch self {
        case 0:
            return .Male
        case 1:
            return .Female
        default:
            return .Unknow
        }
    }
}

typealias SNSPlatformLoginCompletion = (info: [String: AnyObject]) -> Void
typealias SNSPlatformFailureCompletion = (error: NSError?) -> (Void)

protocol SNSPlatformLoginable {
    func login(succ: SNSPlatformLoginCompletion?, fail:SNSPlatformFailureCompletion?)
    func logout(completion: SNSPlatformFailureCompletion?)
}

protocol SNSPlatformShareable {
    func share(activityItems: [AnyObject]) -> Bool
}

protocol SNSPlatformPayable {
    
}

public class SNSPlatformBase: UIActivity {
    
    let logo: UIImage
    let name: String
    let appID: String
    let redirectURI: NSURL?
    let appDescription: String
    
    init(appID: String, redirectURI: NSURL?, name: String, logo: UIImage, description: String) {
        self.name = name
        self.logo = logo
        self.appID = appID
        self.redirectURI = redirectURI
        self.appDescription = description
        super.init()
    }
    
    var platformType: SNSPlatformType {
        return .None
    }
    
    func isAppInstalled() -> Bool {
        return false
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return false
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        return false
    }
}

extension SNSPlatformBase {
    
    override public class func activityCategory() -> UIActivityCategory {
        return .Share
    }
    
    override public func activityTitle() -> String? {
        return name
    }
    
    override public func activityImage() -> UIImage? {
        return logo
    }
    
}

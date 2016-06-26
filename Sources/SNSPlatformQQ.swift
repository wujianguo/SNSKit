//
//  SNSPlatformQQ.swift
//  SNSKit
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit

class SNSPlatformQQ: SNSPlatformBase {
    
    override init(appID: String, redirectURI: NSURL?, name: String, logo: UIImage, description: String) {
        super.init(appID: appID, redirectURI: redirectURI, name: name, logo: logo, description: description)
    }
}


extension SNSPlatformQQ: SNSPlatformLoginable {
    
    func login(succ: SNSPlatformLoginCompletion?, fail: SNSPlatformFailureCompletion?) {
        
    }
    
    func logout(completion: SNSPlatformFailureCompletion?) {
        
    }
}

extension SNSPlatformQQ: SNSPlatformShareable {
    func share(activityItems: [AnyObject]) -> Bool {
        return false
    }

}

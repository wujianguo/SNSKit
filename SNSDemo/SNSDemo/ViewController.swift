//
//  ViewController.swift
//  SNSDemo
//
//  Created by wujianguo on 16/6/26.
//  Copyright © 2016年 wujianguo. All rights reserved.
//

import UIKit
import SNSKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presentShare(sender: UIBarButtonItem) {
        let activity = UIActivityViewController(activityItems: ["hello", NSURL(string: "https://www.baidu.com/")!, UIImage(named: "SinaWeibo")!], applicationActivities: SNSPlatformManager.sharedInstance.shareablePlatforms)
        activity.excludedActivityTypes = [
            UIActivityTypePrint,
            UIActivityTypeAssignToContact,
            UIActivityTypeSaveToCameraRoll,
            UIActivityTypeAddToReadingList,
            UIActivityTypePostToFacebook,
            UIActivityTypePostToTwitter,
            UIActivityTypeMail
        ]

        presentViewController(activity, animated: true, completion: nil)
    }
}


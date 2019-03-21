//
//  ViewController.swift
//  BruceTestUIActivityDiffMsg
//
//  Created by APP技術部-陳冠志 on 2019/3/21.
//  Copyright © 2019 Bruce Chen. All rights reserved.
//

import UIKit

class CustomActivityItemProvider: UIActivityItemProvider
{
    override var item: Any{
        switch self.activityType!
        {
        case UIActivity.ActivityType.postToFacebook:
            return "https://tw.yahoo.com"
        default:
            return "其他分享 https://tw.google.com"
        }
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func activityBtnClicked(_ sender: Any) {
        
        let activityItem = CustomActivityItemProvider(placeholderItem: "")
        let activityViewController = UIActivityViewController(activityItems: [activityItem], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
    
}


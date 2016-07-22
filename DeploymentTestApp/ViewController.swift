//
//  ViewController.swift
//  DeploymentTestApp
//
//  Created by Sébastien Duperron on 01/09/2015.
//  Copyright (c) 2015 Viadeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var versionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let
            version = NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String,
            buildNumber = NSBundle.mainBundle().infoDictionary?["CFBundleVersion"] as? String else {
                return;
        }
        versionLabel.text = "\(version) (\(buildNumber))"
    }
}


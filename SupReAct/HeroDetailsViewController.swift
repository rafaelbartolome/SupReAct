//
//  HeroDetailsViewController.swift
//  SupReAct
//
//  Created by Rafael Bartolome on 05/06/16.
//  Copyright © 2016 www.rafaelbartolome.es. All rights reserved.
//

import UIKit

class HeroDetailsViewController: UIViewController {

    @IBOutlet var realNameLabel: UILabel!
    @IBOutlet var codeNameLabel: UILabel!
    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var powersTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let userDefaults = NSUserDefaults.standardUserDefaults()
        realNameLabel.text =  userDefaults.objectForKey("HeroRealName") as? String
        codeNameLabel.text =  userDefaults.objectForKey("HeroCodeName") as? String
        if let imageName = userDefaults.objectForKey("HeroPicture") as? String {
            pictureImageView.image = UIImage(named: imageName)
        }
        powersTextView.text = userDefaults.objectForKey("HeroPowersDescription") as? String
    }
}




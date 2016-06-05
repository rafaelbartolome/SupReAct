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

    lazy var presenter = HeroDetailsPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.activate(with: self)
    }
}

extension HeroDetailsViewController: HeroDetailsView {
    func updateHero(name realName: String) {
        realNameLabel.text = realName
    }
    func updateHero(alias codeName: String) {
        codeNameLabel.text = codeName
    }
    func updateHero(picture imageName: String) {
        pictureImageView.image = UIImage(named: imageName)
    }
    func updateHero(powers powersDescription: String) {
        powersTextView.text = powersDescription
    }
}




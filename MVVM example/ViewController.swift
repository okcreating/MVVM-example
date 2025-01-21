//
//  ViewController.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 21/01/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            nameLabel.text = profile.name
            secondNameLabel.text = profile.secondName
            ageLabel.text = "\(profile.age)"
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "John", secondName: "Bean", age: 27)
    }


}


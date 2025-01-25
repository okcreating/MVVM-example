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

    var viewModel: ViewModel? // = ViewModel() - here instead of init() inside viewDidLoad
    {
        didSet {
            guard let viewModel = viewModel else { return }
            nameLabel.text = viewModel.name
            secondNameLabel.text = viewModel.secondName
            ageLabel.text = viewModel.age
        }
        // we may do it in viewDidLoad
    }

//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else { return }
//            nameLabel.text = profile.name
//            secondNameLabel.text = profile.secondName
//            ageLabel.text = "\(profile.age)"
//        }
//    }
// contloller can't have a connection with Model, so we disactivate these here

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = ViewModel()
  //      profile = Profile(name: "John", secondName: "Bean", age: 27)
    }


}


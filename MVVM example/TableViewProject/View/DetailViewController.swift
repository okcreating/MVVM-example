//
//  DetailViewController.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 27/01/2025.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    var viewModel: DetailViewModelType?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        textLabel.text = viewModel.description
    }
    // viewWillAppear instead of viewDidLoad because view will be loaded every time when cell is clicked and screen is appering, not once as viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

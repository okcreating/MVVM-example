//
//  NetworkProjectViewController.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 30/01/2025.
//

import UIKit

class NetworkProjectTableViewController: UITableViewController {
    @IBOutlet var viewModel: NetworkViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
                // renewing UI while movies are uploading, possibly not altogether, but gradually
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = viewModel.titleForCell(indexPath: indexPath)
        return cell
    }
}

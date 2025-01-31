//
//  TableViewController.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 22/01/2025.
//

import UIKit

class TableViewController: UITableViewController {

    //var profiles: [TableProfile]!
    var viewModel: TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = TableViewModel()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        viewModel?.numberOFRows ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        guard let tableViewCell = cell,
                let viewModel = viewModel else { return UITableViewCell() }

        let cellViewModel = viewModel.cellViewModel(for: indexPath)

        tableViewCell.viewModel = cellViewModel

//        let profile = viewModel.profiles[indexPath.row]
//
//        tableViewCell.name.text = profile.name
//        tableViewCell.age.text = "\(profile.age)"
        // in case of MVVM we dont need to configure cell like that, so we should add func that retuns model in protocol

        return tableViewCell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.selectRow(indexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }
        if identifier == segue.identifier {
            if let destinationVC = segue.destination as? DetailViewController {
                destinationVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }

}

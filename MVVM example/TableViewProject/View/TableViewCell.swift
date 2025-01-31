//
//  TableViewCell.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 25/01/2025.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!

    var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            name.text = viewModel?.name ?? ""
            age.text = viewModel?.age ?? ""
        }
    }
}

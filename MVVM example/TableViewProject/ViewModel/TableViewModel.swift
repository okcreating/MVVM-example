//
//  TableViewModel.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 25/01/2025.
//

import Foundation

class TableViewModel: TableViewViewModelType {

    private var selectedIndexPath: IndexPath?
    // added for transfering data to DetailView

    var profiles = [TableProfile(name: "John", secondName: "Smith", age: 23),
                   TableProfile(name: "Kate", secondName: "Gredy", age: 56),
                   TableProfile(name: "Max", secondName: "Salmon", age: 55)]

    var numberOFRows: Int {
        profiles.count
    }

    func cellViewModel(for indexPath: IndexPath) -> (any TableViewCellViewModelType)? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile) // model to fill the cell, not the whole tableview
    }

    func viewModelForSelectedRow() -> (any DetailViewModelType)? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }

    func selectRow(indexPath: IndexPath) {
        selectedIndexPath = indexPath
    }

}

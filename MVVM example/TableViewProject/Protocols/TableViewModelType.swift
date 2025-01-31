//
//  TableViewModelType.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 25/01/2025.
//

import Foundation

protocol TableViewViewModelType: AnyObject {
    var numberOFRows: Int { get }
    //var profiles: [TableProfile] { get }  we need add func that return model instead
    func cellViewModel(for path: IndexPath) -> TableViewCellViewModelType?

    // next two func for transfering data to detailView
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(indexPath: IndexPath)
}

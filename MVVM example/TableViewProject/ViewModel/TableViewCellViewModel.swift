//
//  TableViewCellViewModel.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 26/01/2025.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var profile: TableProfile

    var name: String {
        profile.name
    }

    var age: String {
        String(describing: profile.age)
    }

    init(profile: TableProfile) {
        self.profile = profile
    }
}

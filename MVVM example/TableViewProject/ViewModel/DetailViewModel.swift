//
//  DetailViewModel.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 27/01/2025.
//

import Foundation

class DetailViewModel: DetailViewModelType {

    private var profile: TableProfile

    var description: String {
        profile.name + profile.secondName + String(describing: profile.age)
    }

    init(profile: TableProfile) {
        self.profile = profile
    }
}

//
//  ViewModel.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 21/01/2025.
//

import Foundation

class ViewModel {
    private var profile = Profile(name: "John", secondName: "Bean", age: 27)

    var name: String {
        return profile.name
    }

    var secondName: String {
        return profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }

    // 3 vars to provide access to elements for controller (V) that must not connect with Model directly
}
// this is class because we need one VM and not copies
//VM must get Model (Profile) via depency injection  or already have inside class

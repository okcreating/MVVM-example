//
//  NetworkManager.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 31/01/2025.
//

import Foundation

class NetworkManager: NSObject {

    func fetchMoview(completion: ([String]) -> ()) {
        completion(["Movie1", "Movie2", "Movie3"])
    }
}

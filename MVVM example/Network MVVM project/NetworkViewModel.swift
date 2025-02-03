//
//  NetworkViewModel.swift
//  MVVM example
//
//  Created by Oksana Kazarinova on 30/01/2025.
//

import Foundation

class NetworkViewModel: NSObject { // NSObject that we add from library (+) to the top of storyboard screen
    @IBOutlet weak var networkManager: NetworkManager!

    private var movies: [String]?

    func fetchMovies(completion: @escaping() -> ()) {
        networkManager.fetchMoview { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }

    func numberOfRowsInSection() -> Int {
        movies?.count ?? 0
    }

    func titleForCell(indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        return movies[indexPath.row]
    }
}

//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import Foundation


class HomeViewModel:  ObservableObject {

    
    //MARK: - Properties

    // Strign == Category
    @Published var movies: [String: [Movie]] = [:]
    
    
    
    //MARK: - Initialization
    init() {
        setupMovies()
    }
    
   
    
    
    
    //MARK: -  Functions
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci"] = exampleMovies.shuffled()

    }
    
    
    //MARK: - Design API
    public var allCategories: [String]  {
        movies.keys.map { String($0)}
    }

    public func getMoviesFor(cat: String) -> [Movie] {
        movies[cat] ?? []
    }

    
    
    
    
}

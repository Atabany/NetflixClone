//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import Foundation
import SwiftUI


//FAKE DATA
let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful"], year: 2022, rating: "TV-MA", numberOfSeasons: 1)

let exampleMovie2 = Movie(id: UUID().uuidString, name: "Breaking Bad", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"], year: 2022, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show")

let exampleMovie3 = Movie(id: UUID().uuidString, name: "Shawshank", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"], year: 2022, rating: "TV-MA", numberOfSeasons: 3)

let exampleMovie4 = Movie(id: UUID().uuidString, name: "Name", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"], year: 2022, rating: "TV-MA", numberOfSeasons: 4, promotionHeadline: "New episodes coming soon")

let exampleMovie5 = Movie(id: UUID().uuidString, name: "Atabany", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"], year: 2022, rating: "TV-MA", numberOfSeasons: 5)

let exampleMovie6 = Movie(id: UUID().uuidString, name: "Traveller", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"], year: 2022, rating: "TV-MA", numberOfSeasons: 6, promotionHeadline: "Watch Season 6 Now")


let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

// UI


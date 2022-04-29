//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import Foundation
import SwiftUI


//FAKE DATA
let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Breaking Bad", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Shawshank", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Name", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Atabany", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Traveller", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"])


let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]




// UI

extension LinearGradient {
    static var blackOpacityGradient: LinearGradient {
        
        
        return LinearGradient(
            gradient:
                Gradient(
                    colors: [
                        Color.black.opacity(0),
                        Color.black.opacity(0.95)]
                ),
            startPoint: .top,
            endPoint: .bottom
        )
        
        
        
    }
    
}


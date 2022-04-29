//
//  Movie.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import Foundation
struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    
    
    //Movie Detail View
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    
    var promotionHeadline: String?
    
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return String(num) + " " + "Seasons"
            }
        }
        
        return ""
    }
    
    
    var episodes: [Episode]?
}

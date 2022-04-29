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
    

    // Personalization
    var promotionHeadline: String?

    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    
    
    var creators: String
    var cast: String
    
    
    var episodes: [Episode]?
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
    
    
    
    var episodeInfoDisplay: String {
        let episodeInfo: CurrentEpisodeInfo  = currentEpisode ?? defaultEpisodeInfo
        return "S\(episodeInfo.season):E\(episodeInfo.episode) \(episodeInfo.episodeName)"
    }

    
    var episodeDescriptionDisplay: String {
        let episodeInfo: CurrentEpisodeInfo  = currentEpisode ?? defaultEpisodeInfo
        return episodeInfo.description
    }

}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

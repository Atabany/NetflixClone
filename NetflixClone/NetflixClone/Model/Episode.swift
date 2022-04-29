//
//  Episode.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 29/04/2022.
//

import Foundation


struct Episode: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
        
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
    
}

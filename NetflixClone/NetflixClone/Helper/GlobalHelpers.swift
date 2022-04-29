//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import Foundation
import SwiftUI


//FAKE DATA
let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Trending", "Sci-Fi TV", "Suspenseful"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Atabany, Daniel, Amjad, Eman",
    cast: "Lenardo, Ronaldo, Messi"
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Breaking Bad",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"],
    year: 2022, rating: "TV-MA",
    numberOfSeasons: 2,
    promotionHeadline: "Best Rated Show",
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Atabany, Daniel, Amjad, Eman",
    cast: "Lenardo, Ronaldo, Messi"
)

let exampleMovie3 = Movie(
      id: UUID().uuidString,
      name: "Shawshank",
      thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
      categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"],
      year: 2022,
      rating: "TV-MA",
      numberOfSeasons: 3,
      currentEpisode: exampleEpisodeInfo2,
      defaultEpisodeInfo: exampleEpisodeInfo1,
      creators: "Atabany, Daniel, Amjad, Eman",
      cast: "Lenardo, Ronaldo, Messi"
)

let exampleMovie4 = Movie(
      id: UUID().uuidString,
      name: "Name",
      thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
      categories: ["Trending", "Sci-Fi TV",
                   "Suspenseful", "Drama"],
      year: 2022,
      rating: "TV-MA",
      numberOfSeasons: 4,
      promotionHeadline: "New episodes coming soon",
      defaultEpisodeInfo: exampleEpisodeInfo1,
      creators: "Atabany, Daniel, Amjad, Eman",
      cast: "Lenardo, Ronaldo, Messi"
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Atabany",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Atabany, Daniel, Amjad, Eman",
    cast: "Lenardo, Ronaldo, Messi"
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Traveller",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Trending", "Sci-Fi TV", "Suspenseful", "Drama"],
    year: 2022,
    rating: "TV-MA",
    numberOfSeasons: 6,
    currentEpisode: exampleEpisodeInfo2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Atabany, Daniel, Amjad, Eman",
    cast: "Lenardo, Ronaldo, Messi"
)


let exampleMovies = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Dark Name Dark Lol", description: "lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", season: 2, episode: 3)

// UI

let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Darkoo Nameoo Darkoo Lol", description: "lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", season: 2, episode: 3)

// UI


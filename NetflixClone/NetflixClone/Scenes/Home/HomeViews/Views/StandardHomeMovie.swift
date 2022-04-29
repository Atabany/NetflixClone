//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import SwiftUI
import Kingfisher


struct StandardHomeMovie: View {

    let movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            .frame(width: 600, height: 600, alignment: .center)
    }
}

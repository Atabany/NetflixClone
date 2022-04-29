//
//  MovieDetail.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 29/04/2022.
//

import SwiftUI

struct MovieDetail: View {
    
    
    //MARK: - Properties
    let movie: Movie
    let screen = UIScreen.main.bounds
    
    //MARK: - Body
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // close this view
                    }) {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }//:Close button
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubHeadline(movie: movie)
                        
                        
                        if let moviePromotion = movie.promotionHeadline {
                            Text(moviePromotion)
                                .bold()
                                .font(.headline)
                        }

                        
                        PlayButton(backgroundColor: .red) {
                            print("play")
                        }
                        
                        // Episode Information
                        CurrentEpisodeInformation(movie: movie)
                        
                        //CAST-Creators
                        CastInfoView(movie: movie)
                        
                        
                        
                    }//:VStack
                    .padding(.horizontal, 10)
                }//:ScrollView
                
                Spacer()
            }//:VStack
            
            .foregroundColor(.white)
        } //:ZStack
    }
}


struct MovieInfoSubHeadline: View {
    let movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HDView()
            
        }//:HStack
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.footnote)
                .bold()
        }
        .frame(width: 50, height: 20, alignment: .center)
    }
}

struct HDView: View {
    var body: some View {
        Text("HD")
            .font(.footnote)
            .bold()
            .foregroundColor(.white)
            .padding(.horizontal,4)
            .padding(.vertical,2)
            .background(Rectangle().stroke(lineWidth: 2).cornerRadius(2))
    }
}


//MARK: - Preview
struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}

struct CastInfoView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            //CAST
            HStack {
                Text("Cast: \(movie.cast)")
                    .font(.subheadline)
                    .lineLimit(4)
                
                Spacer()
            }//:HStack
            
            
            //Creators
            HStack {
                Text("Creators: \(movie.creators)")
                    .font(.subheadline)
                    .lineLimit(4)
                
                Spacer()
            }//:HStack
            
            
        }
        .padding(.vertical,10)
        .font(.caption)
        .foregroundColor(.gray)
    }
}

struct CurrentEpisodeInformation: View {
    
    let movie: Movie
    
    var body: some View {
        Group {
            // Current Episode Information
            HStack {
                Text(movie.episodeInfoDisplay)
                    .font(.headline)
                    .bold()
                
                Spacer()
            }//:HStack
            .padding(.vertical, 4)
            
            
            // Current Episode Description
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                    .lineLimit(4)
                
                Spacer()
            }//:HStack
            
        }
    }
}

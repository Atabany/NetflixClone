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
                        
                        
                    }//:VStack
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

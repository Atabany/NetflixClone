//
//  TopMoviewPreview.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import SwiftUI
import Kingfisher
import Accelerate

struct TopMoviewPreview: View {
    
    //MARK: - Properties
    let movie: Movie

    
    //MARK: - Functions
    func isCategoryLast(cat: String) -> Bool {
        cat == movie.categories.last
    }

    
    
    
    //MARK: - Body
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()

            
            VStack {
                Spacer()
                //Categories
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(cat:  category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }//:HSTACK
                
                //Buttons
                
                HStack {
                Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                        print("My List button tapped")
                    }
                    Spacer()
                    
                    PlayButton {

                    }
                    .frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: false) {
                        print("My info button tapped")
                    }
                    Spacer()
                }
                .padding()

                
            }//:VStack
            
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            )
            
            .background(LinearGradient.blackOpacityGradientAtTop.padding(.bottom, 260))
            
        }//:ZStack
        .foregroundColor(.white)
    }
}

struct TopMoviewPreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviewPreview(movie: exampleMovie1)
    }
}




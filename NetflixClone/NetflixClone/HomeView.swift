//
//  HomeView.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import SwiftUI

struct HomeView: View {
    
    
    //MARK: - Properties
    private var vm = HomeViewModel()
    let screen = UIScreen.main.bounds
    

    //MARK: - Body
    var body: some View {   
        
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                //MainVStack    
                LazyVStack {
                    
                    ZStack(alignment: .top) {
                        TopMoviewPreview(movie: exampleMovie1)
                            .frame(width: screen.width)
                            .padding(.top, -1 * (UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0) )

                        
                    }
                    
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }//:HSTack
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMoviesFor(cat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width:100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }//:Scroll
//                            .padding(.horizontal)
                        }//:VStack
                    }//:Loop
                }//:MainVStack
            }//:ScrollView
        }//:ZStack
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

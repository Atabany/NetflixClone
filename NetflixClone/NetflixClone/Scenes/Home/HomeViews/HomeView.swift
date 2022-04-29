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
    
    init() {
        print((UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0))
    }
    
    //MARK: - Body
    var body: some View {   
        
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                //MainVStack    
                LazyVStack {
                    
                    TopRowButtons()

                    TopMoviewPreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top,-110)
                        .zIndex(-1)

                    
                    
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
            .preferredColorScheme(.dark)
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            
            
            
            Button(action: {}) {
                Image(Constants.Images.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }//:Button
            .buttonStyle(PlainButtonStyle())
            
            
            
            
            
            Spacer()
            
            Button(action: {}) {
                Text("TV Shows")
            }//:Button
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {}) {
                Text("Movies")
            }//:Button
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {}) {
                Text("My List")
            }//:Button
            .buttonStyle(PlainButtonStyle())
            
            
            
        }//:HStack
        
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

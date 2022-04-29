//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import SwiftUI

struct WhiteButton: View {
    
    
    var text:String
    var imageName: String
    
    
    var action: () -> ()
    
    
    var body: some View {
        
        Button(action: action) {
            
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .font(.system(size: 16, design: .rounded))
                    .bold()
                Spacer()
                
            } //:HSTACK
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(3)
            
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(text: "Play", imageName: "play.fill") {}
        .preferredColorScheme(.dark)
    }
}

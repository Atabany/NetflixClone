//
//  PlayButton.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 28/04/2022.
//

import SwiftUI

struct PlayButton: View {
    
    
    var text:String = "Play"
    var imageName: String = "play.fill"
    var backgroundColor: Color = Color.white


    
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
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3)
            
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton() {}
        .preferredColorScheme(.dark)
    }
}

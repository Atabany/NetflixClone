//
//  LinearGradient+Ext.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 29/04/2022.
//

import SwiftUI

extension LinearGradient {
    static var blackOpacityGradient: LinearGradient {
        
        return LinearGradient(
            gradient:
                Gradient(
                    colors: [
                        Color.black.opacity(0),
                        Color.black.opacity(0.95)]
                ),
            startPoint: .top,
            endPoint: .bottom
        )
        
    }
    
    
    
    static var blackOpacityGradientAtTop: LinearGradient {
        
        return LinearGradient(
            gradient:
                Gradient(
                    colors: [
                        Color.black.opacity(0.95),
                        Color.black.opacity(0)
                    ]
                ),
            startPoint: .top,
            endPoint: .bottom
        )
        
    }
    
    

    
    
    
    
}

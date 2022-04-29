//
//  test.swift
//  NetflixClone
//
//  Created by Mohamed Elatabany on 29/04/2022.
//

import SwiftUI

struct test: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Color.red
                    .frame(
                        width: geometry.size.width,
                        height: geometry.safeAreaInsets.top,
                        alignment: .center
                )
                    .aspectRatio(contentMode: ContentMode.fit)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

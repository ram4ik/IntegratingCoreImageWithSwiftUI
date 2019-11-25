//
//  ContentView.swift
//  IntegratingCoreImageWithSwiftUI
//
//  Created by ramil on 25.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
    .onAppear(perform: loadImage)
    }
    
    func loadImage() {
        image = Image("Example")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

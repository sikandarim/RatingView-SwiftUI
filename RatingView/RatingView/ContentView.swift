//
//  ContentView.swift
//  RatingView
//
//  Created by Mariam Sikandari on 2023-10-01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int?
    var body: some View {
        VStack {
            RatingView(rating:$rating)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

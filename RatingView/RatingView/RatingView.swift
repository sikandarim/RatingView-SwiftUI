//
//  RatingView.swift
//  RatingView
//
//  Created by Mariam Sikandari on 2023-10-01.
//

import SwiftUI

struct RatingView: View {
     
    @Binding var rating: Int?
    
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
   
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(systemName: self.starType(index: index))
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.orange)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3))
    }
}

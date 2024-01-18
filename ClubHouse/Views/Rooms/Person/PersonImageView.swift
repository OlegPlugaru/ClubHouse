//
//  PersonImageView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct PersonImageView: View {
    
    let image: String?
    
    var body: some View {
        
        if let image {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(ContainerRelativeShape())
        } else {
            Image
                .person
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.customLightGray)
                .clipShape(ContainerRelativeShape())
        }
    }
}

#Preview {
    PersonImageView(image: "person_0")
}

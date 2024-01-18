//
//  OtherPersonView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct OtherPersonView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Group {
                    PersonImageView(image: person.img)
                
               
                    Text(person.firstName)
                        .foregroundColor(Color.textBlack)
                        .font(Font.Nunito.extraBold(size: 13))
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)
            }
            .cornerRadius(25)
        }
        .overlay(NewView()
            .offset(x: -20, y: 5)
            .opacity(person.state.contains(.new) ? 1 : 0))
        
    }
}

#Preview {
    OtherPersonView(person: FeedRoom.dummyData[0].hosts[0])
}

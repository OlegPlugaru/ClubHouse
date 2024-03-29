//
//  PersonView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    var body: some View {
        VStack {
            Group {
                
                    PersonImageView(image: person.img)
                
                HStack(spacing: 0) {
                    if person.state.contains(.moderator) {
                        Image
                            .star
                            .font(Font.Nunito.bold(size: 8))
                            .foregroundColor(Color.white)
                            .padding(2)
                            .background(Color.green)
                            .clipShape(Circle())
                            .padding(.trailing, 5)
                    }
                    
                    Text(person.firstName)
                        .foregroundColor(Color.textBlack)
                        .font(Font.Nunito.extraBold(size: 13))
                        .lineLimit(1)
                }
            }
            .cornerRadius(35)
        }
        .overlay(MuteView()
            .offset(x: 40, y: 20)
            .opacity(person.state.contains(.muted) ? 1 : 0))
        .overlay(NewView()
            .offset(x: -20, y: 20)
            .opacity(person.state.contains(.new) ? 1 : 0))
    }
    
}

#Preview {
    PersonView(person: FeedRoom.dummyData[0].hosts[0])
}

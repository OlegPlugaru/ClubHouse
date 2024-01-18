//
//  OthersView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct OthersView: View {
    
    let title: String
    let people: [Person]
    
    private let otherColumn = [
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24),
    ]
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(Font.Nunito.bold(size: 14))
                .foregroundColor(Color.customLightGray)
            
            LazyVGrid(columns: otherColumn, alignment: .leading, spacing: 10) {
                ForEach(people) { person in
                    OtherPersonView(person: person)
                }
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 25)
    }
}

#Preview {
    OthersView(title: "Other People", people: FeedRoom.dummyData[0].othersInRoom)
}

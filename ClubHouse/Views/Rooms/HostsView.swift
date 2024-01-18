//
//  HostsView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct HostsView: View {
    let people: [Person]
    
    private let hostsColumns = [
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25)
    ]
    
    var body: some View {
        LazyVGrid(columns: hostsColumns, alignment: .leading, spacing: 10) {
            ForEach(people) { person in
                PersonView(person: person)
            }
        }
    }
}

#Preview {
    HostsView(people: FeedRoom.dummyData[0].hosts)
}

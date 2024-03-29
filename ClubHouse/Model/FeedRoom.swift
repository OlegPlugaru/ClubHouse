//
//  FeedRoom.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import Foundation

struct FeedRoom: Identifiable {
    let id = UUID()
    let groupName: String?
    let roomName: String
    let hostPics: [String]
    let participants: [String]
    let numOfParticipants: Int
    let numOfHosts: Int
    let hosts: [Person]
    let followedBySpeaker: [Person]
    let othersInRoom: [Person]
}

enum RoomState {
    case new
    case muted
    case moderator
}

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let img: String?
    let state: Set<RoomState>
}

extension FeedRoom {
    static var dummyData: [FeedRoom] {
        [
            FeedRoom(groupName: nil,
                     roomName: "Come along and chat about Swift 🧑🏾‍💻",
                     hostPics: ["person_0", "person_1"],
                     participants: ["Jamie Baker", "Dwight Torres", "Dora Sullivan", "Frederick Wade"],
                     numOfParticipants: 10,
                     numOfHosts: 2,
                     hosts: [
                        Person(firstName: "Ivan",
                               lastName: "Bryant",
                               img: nil,
                               state: [.moderator]),
                        Person(firstName: "Dylan",
                               lastName: "Baker",
                               img: "person_7",
                               state: [.muted])
                     ],
                     followedBySpeaker: [
                        Person(firstName: "Nathaniel",
                               lastName: "Fletcher",
                               img: "person_9",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Gladys",
                               lastName: "Crawford",
                               img: "person_13",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: [.new]),
                        Person(firstName: "Wallace",
                               lastName: "Lowe",
                               img: "person_19",
                               state: [])
                     ],
                     othersInRoom: [
                        Person(firstName: "Christian",
                               lastName: "Harris",
                               img: nil,
                               state: [.new]),
                        Person(firstName: "George",
                               lastName: "Thompson",
                               img: nil,
                               state: []),
                        Person(firstName: "Grace",
                               lastName: "Andrews",
                               img: "person_24",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: []),
                        Person(firstName: "Terra",
                               lastName: "Myers",
                               img: "person_22",
                               state: []),
                        Person(firstName: "Oleg",
                               lastName: "Plugaru",
                               img: "profile_pic",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Andrea",
                               lastName: "Jensen",
                               img: "person_20",
                               state: []),
                        Person(firstName: "Rosa",
                               lastName: "Larson",
                               img: "person_5",
                               state: []),
                     ]),
            FeedRoom(groupName: nil,
                     roomName: "Tea Time ☕️🍵",
                     hostPics: ["person_2", "person_5"],
                     participants: ["Becky Grant", "Carlos Rhodes", "Sarah Sanders"],
                     numOfParticipants: 5,
                     numOfHosts: 3,
                     hosts: [
                        Person(firstName: "Ivan",
                               lastName: "Bryant",
                               img: nil,
                               state: [.moderator]),
                        Person(firstName: "Dylan",
                               lastName: "Baker",
                               img: "person_7",
                               state: [.moderator, .muted]),
                        Person(firstName: "Gladys",
                               lastName: "Crawford",
                               img: "person_13",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: [.new]),
                        Person(firstName: "Wallace",
                               lastName: "Lowe",
                               img: "person_19",
                               state: [])
                     ],
                     followedBySpeaker: [],
                     othersInRoom: [
                        Person(firstName: "Christian",
                               lastName: "Harris",
                               img: nil,
                               state: [.new]),
                        Person(firstName: "George",
                               lastName: "Thompson",
                               img: nil,
                               state: []),
                        Person(firstName: "Grace",
                               lastName: "Andrews",
                               img: "person_24",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: []),
                        Person(firstName: "Terra",
                               lastName: "Myers",
                               img: "person_22",
                               state: []),
                        Person(firstName: "Oleg",
                               lastName: "Plugaru",
                               img: "profile_pic",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Andrea",
                               lastName: "Jensen",
                               img: "person_20",
                               state: []),
                        Person(firstName: "Rosa",
                               lastName: "Larson",
                               img: "person_5",
                               state: []),
                     ]),
            FeedRoom(groupName: "Women in Tech 👩‍💻",
                     roomName: "Ladies come along and share your tech experiences",
                     hostPics: ["person_12", "person_13"],
                     participants: ["Celina Wells", "Diane Bell", "Emma Fowler", "Marlene Ferguson"],
                     numOfParticipants: 120,
                     numOfHosts: 5,
                     hosts: [
                        Person(firstName: "Ivan",
                               lastName: "Bryant",
                               img: nil,
                               state: [.moderator]),
                        Person(firstName: "Dylan",
                               lastName: "Baker",
                               img: "person_7",
                               state: [.moderator, .muted])
                     ],
                     followedBySpeaker: [
                        Person(firstName: "Nathaniel",
                               lastName: "Fletcher",
                               img: "person_9",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Gladys",
                               lastName: "Crawford",
                               img: "person_13",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: [.new]),
                        Person(firstName: "Wallace",
                               lastName: "Lowe",
                               img: "person_19",
                               state: [])
                     ],
                     othersInRoom: [
                        Person(firstName: "Christian",
                               lastName: "Harris",
                               img: nil,
                               state: [.new]),
                        Person(firstName: "George",
                               lastName: "Thompson",
                               img: nil,
                               state: []),
                        Person(firstName: "Grace",
                               lastName: "Andrews",
                               img: "person_24",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: []),
                        Person(firstName: "Terra",
                               lastName: "Myers",
                               img: "person_22",
                               state: []),
                        Person(firstName: "Oleg",
                               lastName: "Plugaru",
                               img: "profile_pic",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Andrea",
                               lastName: "Jensen",
                               img: "person_20",
                               state: []),
                        Person(firstName: "Rosa",
                               lastName: "Larson",
                               img: "person_5",
                               state: []),
                     ]),
            FeedRoom(groupName: nil,
                     roomName: "Dominos or Pizza Hut? 🍕👀",
                     hostPics: ["person_11", "person_12"],
                     participants: ["Jamie Baker", "Dwight Torres", "Dora Sullivan", "Frederick Wade"],
                     numOfParticipants: 50,
                     numOfHosts: 3,
                     hosts: [
                        Person(firstName: "Ivan",
                               lastName: "Bryant",
                               img: nil,
                               state: [.moderator]),
                        Person(firstName: "Dylan",
                               lastName: "Baker",
                               img: "person_7",
                               state: [.moderator, .muted])
                     ],
                     followedBySpeaker: [
                        Person(firstName: "Nathaniel",
                               lastName: "Fletcher",
                               img: "person_9",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Gladys",
                               lastName: "Crawford",
                               img: "person_13",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: [.new]),
                        Person(firstName: "Wallace",
                               lastName: "Lowe",
                               img: "person_19",
                               state: [])
                     ],
                     othersInRoom: [
                        Person(firstName: "Christian",
                               lastName: "Harris",
                               img: nil,
                               state: [.new]),
                        Person(firstName: "George",
                               lastName: "Thompson",
                               img: nil,
                               state: []),
                        Person(firstName: "Grace",
                               lastName: "Andrews",
                               img: "person_24",
                               state: []),
                        Person(firstName: "Ethel",
                               lastName: "Rivera",
                               img: "person_21",
                               state: []),
                        Person(firstName: "Terra",
                               lastName: "Myers",
                               img: "person_22",
                               state: []),
                        Person(firstName: "Oleg",
                               lastName: "Plugaru",
                               img: "profile_pic",
                               state: [.new]),
                        Person(firstName: "Mae",
                               lastName: "Dixon",
                               img: "person_9",
                               state: []),
                        Person(firstName: "Andrea",
                               lastName: "Jensen",
                               img: "person_20",
                               state: []),
                        Person(firstName: "Rosa",
                               lastName: "Larson",
                               img: "person_5",
                               state: []),
                     ])
        ]
    }
}

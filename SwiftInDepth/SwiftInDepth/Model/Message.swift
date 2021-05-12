//
//  Message.swift
//  SwiftInDepth
//
//  Created by nhatnt on 12/05/2021.
//

import Foundation

//turning struct into an enum. Example:
//struct Message {
//    let userId: String
//    let contents: String?
//    let date: Date
//    let hasJoined: Bool
//    let hasLeft: Bool
//    let isBeingDrafted: Bool
//    let isSendingBalloons: Bool
//}

enum Message {
    case text(userId: String, contents: String, date: Date)
    case draft(userId: String, date: Date)
    case join(userId: String, date: Date)
    case leave(userId: String, date: Date)
    case balloon(userId: String, date: Date)
}

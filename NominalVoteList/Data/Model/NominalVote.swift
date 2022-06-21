//
//  NominalVote.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 20/06/22.
//

import Foundation

struct NominalVote : Codable {
    let id, title, votedAt, createdAt: String
    let link: String
    let details: Details

    enum CodingKeys: String, CodingKey {
        case id, title
        case votedAt = "voted_at"
        case createdAt = "created_at"
        case link, details
    }
    
}

struct Details: Codable {
    let detailsDescription: String
    let voteLink: String
    let themes: String

    enum CodingKeys: String, CodingKey {
        case detailsDescription = "description"
        case voteLink = "vote_link"
        case themes
    }
}

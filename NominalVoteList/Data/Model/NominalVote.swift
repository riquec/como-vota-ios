//
//  NominalVote.swift
//  Como Vota (iOS)
//
//  Created by Henrique Cortinovis on 20/06/22.
//

import Foundation

struct NominalVoteItems : Codable {
    let currentPage: Int
    let items: Array<NominalVoteItem>
    
    enum CodingKeys: String, CodingKey {
        case items
        case currentPage = "current_page"
    }
}

struct NominalVoteItem : Codable {
    let title, date, status: String
    let detailsLink: String

    enum CodingKeys: String, CodingKey {
        case title, date, status
        case detailsLink = "details_link"
    }
}

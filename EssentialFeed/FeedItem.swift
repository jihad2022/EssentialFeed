//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Jihad Mahmoud on 29/12/2021.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}

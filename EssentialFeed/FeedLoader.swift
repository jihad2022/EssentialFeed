//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Jihad Mahmoud on 29/12/2021.
//

import Foundation

protocol FeedLoader {
    func load() throws -> FeedItem
}

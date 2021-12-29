//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Jihad Mahmoud on 29/12/2021.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://google.com/")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    var requestedURL: URL?
    
    private init() {}
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}

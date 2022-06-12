//
//  Constants.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import Foundation


struct Constants {
    static let apiKey = "56ecb06b06254e0dbd06a108053b227b"
    static let techCrunchApi = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=\(Constants.apiKey)"
    static let wallStreetJournalApi = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=\(Constants.apiKey)"
    static let businessHeadlinesUs = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(Constants.apiKey)"
    static let newsFromApple = "https://newsapi.org/v2/everything?q=apple&apiKey=\(Constants.apiKey)"
    static let newsFromTesla = "https://newsapi.org/v2/everything?q=tesla&apiKey=\(Constants.apiKey)"
}

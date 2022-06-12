//
//  NewsDetails.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import Foundation

class News: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
class Article: Codable, Identifiable{
    
    let id = UUID()
    
    let source: Source
    let author: String?
    let title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
class Source: Codable {
    let id: String?
    let name: String
}

//
//  NewsDetailsViewModel.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import Foundation
import SwiftUI

class NewsDetailsViewModel: ObservableObject {
    var newsData = [Article]()
    
    public func getDatalist(newsURI: NewsTopics) {
        var selectedUrl: String?
        switch newsURI {
        case .techCrunch:
            selectedUrl =  Constants.techCrunchApi
        case .wallStreet:
            selectedUrl =  Constants.wallStreetJournalApi
        case .businessHeadline:
            selectedUrl =  Constants.businessHeadlinesUs
        case .apple:
            selectedUrl =  Constants.newsFromApple
        case .tesla:
            selectedUrl =  Constants.newsFromTesla
        }
        
        ApiService.shared.getData(url: selectedUrl!) { result in
            switch result{
            case .failure(let error):
                print(error)
                break
                
            case .success(let datalist):
                self.newsData = datalist.articles
            }
        }
    }
}

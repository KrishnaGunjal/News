//
//  NewsDetailsViewModel.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import Foundation
import SwiftUI

class NewsDetailsViewModel: ObservableObject {
    @Published var newsData = NewsDetails()
    
    private var persistentDataList = NewsDetails(){
        didSet {
            setData()
        }
    }
    
    fileprivate func setData(){
        DispatchQueue.main.async {
            self.newsData = self.persistentDataList
        }
    }
    
    public func getDatalist(newsURI: String) {
        ApiService.shared.getData(url: newsURI) { result in
            switch result{
            case .failure(let error):
                print(error)
                break
                
            case .success(let datalist):
                self.persistentDataList = datalist
            }
        }
    }
}

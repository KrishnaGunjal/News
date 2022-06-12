//
//  DetailsView.swift
//  News
//
//  Created by Krishna Gunjal on 05/06/22.
//

import SwiftUI

struct DetailsView: View {
    
    @ObservedObject var viewModel = NewsDetailsViewModel()
    var selectedNewsCategory: NewsTopics?
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.newsData ){news in
                VStack(alignment: .leading, spacing: 5){
                    Text(news.title)
                        .font(.caption)
                        
                    Text(news.author!)
                        .font(.caption2)
                    
                    Text(news.articleDescription)
                        .font(.caption2)
                }.padding(5)
                
            }
            
        }.onAppear(
            perform: {
                self.viewModel.getDatalist(newsURI: selectedNewsCategory!)
            }
        )
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

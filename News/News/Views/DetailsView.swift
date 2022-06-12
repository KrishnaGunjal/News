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
                Text(news.title)
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

//
//  ContentView.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import SwiftUI

enum NewsTopics: String {
    case techCrunch = "techCrunch"
    case wallStreet = "wallStreet"
    case businessHeadline = "businessHeadline"
    case apple = "apple"
    case tesla = "tesla"
}

struct ContentView: View {
    @State var selectedCategory = ""
    var body: some View {
        let viewModel = ViewModel()
      
        
        NavigationView{
            List(viewModel.newsSource, id: \.self) { newsType in
                NavigationLink(destination: DetailsView( selectedNewsCategory: newsType)){
                    HStack {
                        Text(newsType)
                    }
                }
                
                .navigationTitle("News Topics")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

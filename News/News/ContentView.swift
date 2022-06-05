//
//  ContentView.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import SwiftUI

enum NewsTopics {
    case techCrunch
    case wallStreet
    case businessHeadline
    case apple
    case tesla
}

struct ContentView: View {
    
    var body: some View {
        let viewModel = ViewModel()
        
        NavigationView{
            List(viewModel.newsSource, id: \.self) { newsType in
                HStack {
                    Text(newsType)
                }.onTapGesture {
                    print("Typed")
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

//
//  ContentView.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import SwiftUI

enum NewsTopics: String, CaseIterable {
    case techCrunch = "Tech Crunch"
    case wallStreet = "Wall Street"
    case businessHeadline = "Business Headline"
    case apple = "Apple"
    case tesla = "Tesla"
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(NewsTopics.allCases, id: \.self){topic in
                NavigationLink(destination: DetailsView(selectedNewsCategory: topic), label: {
                    Text(topic.rawValue)
                })
                    .navigationTitle("News Topics")
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

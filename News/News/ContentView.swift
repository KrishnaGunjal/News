//
//  ContentView.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let viewModel = ViewModel()
        List(viewModel.newsSource, id: \.self) { newsType in
            Text(newsType)
            
        }
    }
}

struct ListRow: View {
    var body: some View {
        HStack{
            Text("abc")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

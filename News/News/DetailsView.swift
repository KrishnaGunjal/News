//
//  DetailsView.swift
//  News
//
//  Created by Krishna Gunjal on 05/06/22.
//

import SwiftUI

struct DetailsView: View {
    let items = Array(1...10).map({"Element \($0)"})
    let layout = [
        GridItem(.flexible(minimum: 100, maximum: 200),spacing: 12),
        GridItem(.flexible(minimum: 100, maximum: 200), alignment: .top)
    ]
    @ObservedObject var viewModel = NewsDetailsViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                
                ForEach(items, id: \.self){ item in
                    Text(item)
                }
            }
        }.onAppear(
            
        )
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

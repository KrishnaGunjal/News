//
//  DetailsView.swift
//  News
//
//  Created by Krishna Gunjal on 05/06/22.
//

import SwiftUI

struct DetailsView: View {
    let items = Array(1...10).map({"Element \($0)"})
//    let layout = [
//        GridItem(.flexible(minimum: 100, maximum: 200),spacing: 12),
//        GridItem(.flexible(minimum: 100, maximum: 200), alignment: .top)
//    ]
    @ObservedObject var viewModel = NewsDetailsViewModel()
    var selectedNewsCategory: NewsTopics?
    
    
    var body: some View {
        ScrollView {
//            ForEach(selectedNewsCategory!, id: \.self){ item in
//                Text(selectedNewsCategory!.rawValue)
//            }
//            ForEach(selectedNewsCategory!, id:\.self){news in
//                Text ("\($news)")
//            }
            Text(selectedNewsCategory!.rawValue)
            
        }.onAppear(
            
        )
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(viewModel: NewsDetailsViewModel(), selectedNewsCategory: .techCrunch)
    }
}

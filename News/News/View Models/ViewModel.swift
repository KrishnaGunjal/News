//
//  ViewModel.swift
//  News
//
//  Created by Krishna Gunjal on 04/06/22.
//

import Foundation

class ViewModel: ObservableObject, Identifiable {
    let id = UUID()
    var newsSource = ["Tech Crunch", "Wall Street", "Business Headlines", "Apple", "Tesla"]
}

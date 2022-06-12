//
//  APIService.swift
//  News
//
//  Created by Krishna Gunjal on 05/06/22.
//

import Foundation

enum DataError: Error {
    case networkError
    case parsing
    case invalidURL
}

class ApiService {
    static let shared = ApiService()
    private init(){}

    func getData(url: String, completionHandler: @escaping(Result<News, DataError>) -> Void) {
        guard let dataURI = URL(string: url) else {
            completionHandler(.failure(DataError.invalidURL))
            return
        }

        let dataTask = URLSession.shared.dataTask(with: dataURI, completionHandler: { (data, response, error) -> Void in
            guard let data = data, error == nil, response != nil else {
                completionHandler(.failure(.networkError))
                return
            }
            do {
                // Decode the json data.
                let decoder = JSONDecoder()
                let response = try decoder.decode(News.self, from: data)
                completionHandler(.success(response))
            } catch {
                print(error)
                completionHandler(.failure(.parsing))
            }
        })
        dataTask.resume()
    }
}

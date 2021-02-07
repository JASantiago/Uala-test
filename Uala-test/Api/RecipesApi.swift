//
//  RecipesApi.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
    case delete = "DELETE"
    case put = "PUT"
}

import Foundation

class RecipesApi {

    func getRecipes(url: String, completion: @escaping ([Meal]?) -> Void) {
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: .main)
        guard let url = URL(string: url) else {
            completion(nil)
            return
        }
        let task = session.dataTask(with: url, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            guard let data = data else {
                completion(nil)
                return
            }
            let meals = try? JSONDecoder().decode([Meal].self, from: data)
            completion(meals)
        })
        task.resume()
    }

}

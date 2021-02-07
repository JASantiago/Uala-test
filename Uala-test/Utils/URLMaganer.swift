//
//  URLMaganer.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import Foundation

struct URLMaganer {
    static let baseURL = "https://www.themealdb.com/api/json/v1/1/"

    static func searchUrl(for string: String) -> String {
        return "\(baseURL)search.php?s=\(string)"
    }
}

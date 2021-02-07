//
//  SearchControllerViewModel.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import Foundation

class SearchControllerViewModel {

    // MARK: - Properties

    var didFinishedFetchingMeals: (() -> Void)?
    var recipesApiHelper = RecipesApi()
    var meals = [Meal]()
    var dispatchQueue = DispatchQueue(label: "com.mealsservice", qos: .userInitiated)

    // MARK: - Methods

    // MARK: - TODO: Change the serial queue for cancellable operations

    func fetchMeals(searchString: String) {
        dispatchQueue.sync { [weak self] in
            guard let self = self else { return }
            self.recipesApiHelper.getRecipes(url: URLManager.searchUrl(for: searchString) ) {  (meals) in
                guard let meals = meals else { return }
                self.meals = meals
                self.didFinishedFetchingMeals?()
            }
        }
    }
}

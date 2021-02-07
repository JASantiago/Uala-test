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

    // MARK: - Methods

    func fetchMeals(searchString: String) {
        recipesApiHelper.getRecipes(url: URLManager.searchUrl(for: searchString) ) { [weak self] (meals) in
            guard let self = self,
                  let meals = meals else { return }
            self.meals = meals
            self.didFinishedFetchingMeals?()
        }
    }
}

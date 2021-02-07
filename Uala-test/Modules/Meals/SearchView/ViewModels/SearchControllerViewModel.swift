//
//  SearchControllerViewModel.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import Foundation

class SearchControllerViewModel {

    // MARK: - Properties

    var recipesApiHelper = RecipesApi()
    var meals = [Meal]()
    var randomMeal: Meal?
    var dispatchQueue = DispatchQueue(label: Constants.Queues.mealsQueue, qos: .userInitiated)

    var didFinishedFetchingMeals: (() -> Void)?
    var didFinishedImageBanner: (() -> Void)?

    // MARK: - Methods

    // MARK: - TODO: Change the serial queue for cancellable operations

    func fetchMeals(searchString: String) {
        dispatchQueue.sync { [weak self] in
            guard let self = self else { return }
            self.recipesApiHelper.getRecipes(url: URLManager.searchUrl(for: searchString)) { (meals) in
                guard let meals = meals else { return }
                self.meals = meals
                self.didFinishedFetchingMeals?()
            }
        }
    }

    func fetchRandomMeal() {
        let timer = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: true) { timer in
            self.recipesApiHelper.getRecipes(url: URLManager.randomMeal()) { [weak self] (meals) in
                guard let meals = meals else { return }
                self?.randomMeal = meals.first
                self?.didFinishedImageBanner?()
            }
        }
        timer.fire()
    }
}

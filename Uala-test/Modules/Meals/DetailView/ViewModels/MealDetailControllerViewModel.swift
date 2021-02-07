//
//  MealDetailControllerViewModel.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import Foundation

class MealDetailControllerViewModel {

    // MARK: - Properies

    var meal: Meal

    // MARK: - Methods
    
    init(meal: Meal) {
        var ingredients = meal.ingredients
        ingredients = ingredients.compactMap({ ingredient in
            if ingredient.isEmpty { return nil }
            else { return ingredient }
        })
        self.meal = meal
    }
}

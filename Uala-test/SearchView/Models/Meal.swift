//
//  Meal.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import Foundation
struct Meal : Codable {
    let idMeal : String
    let strMeal : String
    let strDrinkAlternate : String?
    let strCategory : String
    let strArea : String
    let strInstructions : String
    let strMealThumb : String
    let strTags : String
    let strYoutube : String
    var ingredients : [String] = []
    var mesures : [String] = []
    let strIngredient1 : String?
    let strIngredient2 : String?
    let strIngredient3 : String?
    let strIngredient4 : String?
    let strIngredient5 : String?
    let strIngredient6 : String?
    let strIngredient7 : String?
    let strIngredient8 : String?
    let strIngredient9 : String?
    let strIngredient10 : String?
    let strIngredient11 : String?
    let strIngredient12 : String?
    let strIngredient13 : String?
    let strIngredient14 : String?
    let strIngredient15 : String?
    let strIngredient16 : String?
    let strIngredient17 : String?
    let strIngredient18 : String?
    let strIngredient19 : String?
    let strIngredient20 : String?
    let strMeasure1 : String?
    let strMeasure2 : String?
    let strMeasure3 : String?
    let strMeasure4 : String?
    let strMeasure5 : String?
    let strMeasure6 : String?
    let strMeasure7 : String?
    let strMeasure8 : String?
    let strMeasure9 : String?
    let strMeasure10 : String?
    let strMeasure11 : String?
    let strMeasure12 : String?
    let strMeasure13 : String?
    let strMeasure14 : String?
    let strMeasure15 : String?
    let strMeasure16 : String?
    let strMeasure17 : String?
    let strMeasure18 : String?
    let strMeasure19 : String?
    let strMeasure20 : String?
    let strSource : String?
    let dateModified : String?

    enum CodingKeys: String, CodingKey {

        case idMeal = "idMeal"
        case strMeal = "strMeal"
        case strDrinkAlternate = "strDrinkAlternate"
        case strCategory = "strCategory"
        case strArea = "strArea"
        case strInstructions = "strInstructions"
        case strMealThumb = "strMealThumb"
        case strTags = "strTags"
        case strYoutube = "strYoutube"
        case strIngredient1 = "strIngredient1"
        case strIngredient2 = "strIngredient2"
        case strIngredient3 = "strIngredient3"
        case strIngredient4 = "strIngredient4"
        case strIngredient5 = "strIngredient5"
        case strIngredient6 = "strIngredient6"
        case strIngredient7 = "strIngredient7"
        case strIngredient8 = "strIngredient8"
        case strIngredient9 = "strIngredient9"
        case strIngredient10 = "strIngredient10"
        case strIngredient11 = "strIngredient11"
        case strIngredient12 = "strIngredient12"
        case strIngredient13 = "strIngredient13"
        case strIngredient14 = "strIngredient14"
        case strIngredient15 = "strIngredient15"
        case strIngredient16 = "strIngredient16"
        case strIngredient17 = "strIngredient17"
        case strIngredient18 = "strIngredient18"
        case strIngredient19 = "strIngredient19"
        case strIngredient20 = "strIngredient20"
        case strMeasure1 = "strMeasure1"
        case strMeasure2 = "strMeasure2"
        case strMeasure3 = "strMeasure3"
        case strMeasure4 = "strMeasure4"
        case strMeasure5 = "strMeasure5"
        case strMeasure6 = "strMeasure6"
        case strMeasure7 = "strMeasure7"
        case strMeasure8 = "strMeasure8"
        case strMeasure9 = "strMeasure9"
        case strMeasure10 = "strMeasure10"
        case strMeasure11 = "strMeasure11"
        case strMeasure12 = "strMeasure12"
        case strMeasure13 = "strMeasure13"
        case strMeasure14 = "strMeasure14"
        case strMeasure15 = "strMeasure15"
        case strMeasure16 = "strMeasure16"
        case strMeasure17 = "strMeasure17"
        case strMeasure18 = "strMeasure18"
        case strMeasure19 = "strMeasure19"
        case strMeasure20 = "strMeasure20"
        case strSource = "strSource"
        case dateModified = "dateModified"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idMeal = try values.decode(String.self, forKey: .idMeal)
        strMeal = try values.decode(String.self, forKey: .strMeal)
        strDrinkAlternate = try values.decodeIfPresent(String.self, forKey: .strDrinkAlternate)
        strCategory = try values.decode(String.self, forKey: .strCategory)
        strArea = try values.decode(String.self, forKey: .strArea)
        strInstructions = try values.decode(String.self, forKey: .strInstructions)
        strMealThumb = try values.decode(String.self, forKey: .strMealThumb)
        strTags = try values.decode(String.self, forKey: .strTags)
        strYoutube = try values.decode(String.self, forKey: .strYoutube)
        strIngredient1 = try values.decodeIfPresent(String.self, forKey: .strIngredient1)
        if let ingredient = strIngredient1 { ingredients.append(ingredient) }
        strIngredient2 = try values.decodeIfPresent(String.self, forKey: .strIngredient2)
        if let ingredient = strIngredient2 { ingredients.append(ingredient) }
        strIngredient3 = try values.decodeIfPresent(String.self, forKey: .strIngredient3)
        if let ingredient = strIngredient3 { ingredients.append(ingredient) }
        strIngredient4 = try values.decodeIfPresent(String.self, forKey: .strIngredient4)
        if let ingredient = strIngredient4 { ingredients.append(ingredient) }
        strIngredient5 = try values.decodeIfPresent(String.self, forKey: .strIngredient5)
        if let ingredient = strIngredient5 { ingredients.append(ingredient) }
        strIngredient6 = try values.decodeIfPresent(String.self, forKey: .strIngredient6)
        if let ingredient = strIngredient6 { ingredients.append(ingredient) }
        strIngredient7 = try values.decodeIfPresent(String.self, forKey: .strIngredient7)
        if let ingredient = strIngredient7 { ingredients.append(ingredient) }
        strIngredient8 = try values.decodeIfPresent(String.self, forKey: .strIngredient8)
        if let ingredient = strIngredient8 { ingredients.append(ingredient) }
        strIngredient9 = try values.decodeIfPresent(String.self, forKey: .strIngredient9)
        if let ingredient = strIngredient9 { ingredients.append(ingredient) }
        strIngredient10 = try values.decodeIfPresent(String.self, forKey: .strIngredient10)
        if let ingredient = strIngredient10 { ingredients.append(ingredient) }
        strIngredient11 = try values.decodeIfPresent(String.self, forKey: .strIngredient11)
        if let ingredient = strIngredient11 { ingredients.append(ingredient) }
        strIngredient12 = try values.decodeIfPresent(String.self, forKey: .strIngredient12)
        if let ingredient = strIngredient12 { ingredients.append(ingredient) }
        strIngredient13 = try values.decodeIfPresent(String.self, forKey: .strIngredient13)
        if let ingredient = strIngredient13 { ingredients.append(ingredient) }
        strIngredient14 = try values.decodeIfPresent(String.self, forKey: .strIngredient14)
        if let ingredient = strIngredient14 { ingredients.append(ingredient) }
        strIngredient15 = try values.decodeIfPresent(String.self, forKey: .strIngredient15)
        if let ingredient = strIngredient15 { ingredients.append(ingredient) }
        strIngredient16 = try values.decodeIfPresent(String.self, forKey: .strIngredient16)
        if let ingredient = strIngredient16 { ingredients.append(ingredient) }
        strIngredient17 = try values.decodeIfPresent(String.self, forKey: .strIngredient17)
        if let ingredient = strIngredient17 { ingredients.append(ingredient) }
        strIngredient18 = try values.decodeIfPresent(String.self, forKey: .strIngredient18)
        if let ingredient = strIngredient18 { ingredients.append(ingredient) }
        strIngredient19 = try values.decodeIfPresent(String.self, forKey: .strIngredient19)
        if let ingredient = strIngredient19 { ingredients.append(ingredient) }
        strIngredient20 = try values.decodeIfPresent(String.self, forKey: .strIngredient20)
        if let ingredient = strIngredient20 { ingredients.append(ingredient) }
        strMeasure1 = try values.decodeIfPresent(String.self, forKey: .strMeasure1)
        if let measure = strMeasure1 { mesures.append(measure) }
        strMeasure2 = try values.decodeIfPresent(String.self, forKey: .strMeasure2)
        if let measure = strMeasure2 { mesures.append(measure) }
        strMeasure3 = try values.decodeIfPresent(String.self, forKey: .strMeasure3)
        if let measure = strMeasure3 { mesures.append(measure) }
        strMeasure4 = try values.decodeIfPresent(String.self, forKey: .strMeasure4)
        if let measure = strMeasure4 { mesures.append(measure) }
        strMeasure5 = try values.decodeIfPresent(String.self, forKey: .strMeasure5)
        if let measure = strMeasure5 { mesures.append(measure) }
        strMeasure6 = try values.decodeIfPresent(String.self, forKey: .strMeasure6)
        if let measure = strMeasure6 { mesures.append(measure) }
        strMeasure7 = try values.decodeIfPresent(String.self, forKey: .strMeasure7)
        if let measure = strMeasure7 { mesures.append(measure) }
        strMeasure8 = try values.decodeIfPresent(String.self, forKey: .strMeasure8)
        if let measure = strMeasure8 { mesures.append(measure) }
        strMeasure9 = try values.decodeIfPresent(String.self, forKey: .strMeasure9)
        if let measure = strMeasure9 { mesures.append(measure) }
        strMeasure10 = try values.decodeIfPresent(String.self, forKey: .strMeasure10)
        if let measure = strMeasure10 { mesures.append(measure) }
        strMeasure11 = try values.decodeIfPresent(String.self, forKey: .strMeasure11)
        if let measure = strMeasure11 { mesures.append(measure) }
        strMeasure12 = try values.decodeIfPresent(String.self, forKey: .strMeasure12)
        if let measure = strMeasure12 { mesures.append(measure) }
        strMeasure13 = try values.decodeIfPresent(String.self, forKey: .strMeasure13)
        if let measure = strMeasure13 { mesures.append(measure) }
        strMeasure14 = try values.decodeIfPresent(String.self, forKey: .strMeasure14)
        if let measure = strMeasure14 { mesures.append(measure) }
        strMeasure15 = try values.decodeIfPresent(String.self, forKey: .strMeasure15)
        if let measure = strMeasure15 { mesures.append(measure) }
        strMeasure16 = try values.decodeIfPresent(String.self, forKey: .strMeasure16)
        if let measure = strMeasure16 { mesures.append(measure) }
        strMeasure17 = try values.decodeIfPresent(String.self, forKey: .strMeasure17)
        if let measure = strMeasure17 { mesures.append(measure) }
        strMeasure18 = try values.decodeIfPresent(String.self, forKey: .strMeasure18)
        if let measure = strMeasure18 { mesures.append(measure) }
        strMeasure19 = try values.decodeIfPresent(String.self, forKey: .strMeasure19)
        if let measure = strMeasure19 { mesures.append(measure) }
        strMeasure20 = try values.decodeIfPresent(String.self, forKey: .strMeasure20)
        if let measure = strMeasure20 { mesures.append(measure) }
        strSource = try values.decodeIfPresent(String.self, forKey: .strSource)
        dateModified = try values.decodeIfPresent(String.self, forKey: .dateModified)
    }

}


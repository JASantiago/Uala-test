//
//  MealCell.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit

class MealCell: UITableViewCell, ReusableView, NibLoadableView {

    // MARK: - Outlets

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var mealImageView: UIImageView!

    // MARK: - Methods

    func configure(meal: Meal) {
        titleLabel.text = meal.strMeal
        categoryLabel.text = meal.strCategory
        UIImageView().getImageFromCache(urlString: meal.strMealThumb ?? "") { [weak self] (image: UIImage?) in
            DispatchQueue.main.async {
                self?.mealImageView.image = image
            }
        }
    }

    override func prepareForReuse() {
        mealImageView.image = UIImage(named: Constants.ImageNames.defaultImageName)
    }
}

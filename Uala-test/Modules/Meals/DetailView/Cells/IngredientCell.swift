//
//  IngredientCell.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit

class IngredientCell: UITableViewCell, ReusableView, NibLoadableView {

    // MARK: - Outlets

    @IBOutlet weak var titleLabel: UILabel!

    // MARK: - Methods

    func configure(title: String) {
        titleLabel.text = title
    }
    
}

//
//  MealDetailController.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit
import WebKit

class MealDetailController: UIViewController {

    // MARK: - Outlets

    // MARK: - TODO handle StackView Height (and content) programatically
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var intructionsTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var youtubeWebKit: WKWebView!
    
    // MARK: - Properties

     var viewModel: MealDetailControllerViewModel?

    // MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureUI()
        configureWebView()
    }

    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(IngredientCell.self)
    }

    private func configureUI() {
        titleLabel.text = viewModel?.meal.strMeal
        intructionsTextView.text = viewModel?.meal.strInstructions
    }

}

// MARK: - WebKit

extension MealDetailController {
    func configureWebView() {
        youtubeWebKit.configuration.allowsInlineMediaPlayback = true
        DispatchQueue.main.async { [weak self] in
            guard let videoURL = URL(string: self?.viewModel?.meal.strYoutube ?? "") else { return }
            let request = URLRequest(url: videoURL)
            self?.youtubeWebKit.load(request)
            self?.youtubeWebKit.isHidden = false
        }
    }
}

extension MealDetailController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.meal.ingredients.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as IngredientCell
        cell.configure(title: viewModel?.meal.ingredients[indexPath.row] ?? "")
        return cell
    }
}

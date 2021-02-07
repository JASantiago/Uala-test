//
//  ViewController.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties

    var viewModel = SearchControllerViewModel()

    // MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureViewModel()
        searchBar.delegate = self
    }

    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MealCell.self)
    }

    private func configureViewModel() {
        viewModel.didFinishedFetchingMeals = { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }

        viewModel.fetchMeals(searchString: String())
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as MealCell
        cell.configure(meal: viewModel.meals[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = MealDetailController(nibName: String(describing: MealDetailController.self), bundle: nil)
        controller.viewModel = MealDetailControllerViewModel(meal: viewModel.meals[indexPath.row])
        navigationController?.show(controller, sender: nil)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.fetchMeals(searchString: searchText)
    }
}

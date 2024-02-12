//
//  HomeViewController.swift
//  mvcdemo
//
//  Created by Suryanarayan Sahu on 07/02/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    var presenter = HomeViewPresenter()
    
    // MARK: View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        presenter.delegate = self
        navigationController?.navigationBar.topItem?.title = presenter.getNavigationTitle()
        presenter.setDataOnLoad()
    }
    
}

//MARK: HomeView Extension
extension HomeViewController: HomeViewPresenterProtocol {
    func updateTableView() {
        self.homeTableView.reloadData()
    }
}

//MARK: TableView Datasource
extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.getTableViewItemsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath) 
        cell.textLabel?.text = presenter.getItemTitle(indexPath: indexPath)
        cell.selectionStyle = .none
        return cell
    }
}

//MARK: TableView Delegate
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

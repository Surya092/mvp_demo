//
//  HomeViewPresenter.swift
//  mvpdemo
//
//  Created by Suryanarayan Sahu on 08/02/24.
//

import Foundation

protocol HomeViewPresenterProtocol {
    func updateTableView()
}

class HomeViewPresenter {
    
    var model = HomePageModel(pageItems: ["Red", "Green", "Blue"], title: "Home Page")
    var delegate: HomeViewPresenterProtocol!
    
    func setDataOnLoad() {
        self.delegate.updateTableView()
    }
    
    func getNavigationTitle() -> String {
        model.pageTitle
    }
    
    func getTableViewItemsCount() -> Int {
        model.items.count
    }
    
    func getItemTitle(indexPath: IndexPath) -> String {
        model.items[indexPath.row]
    }
    
}

//
//  HomeViewControllerTest.swift
//  mvpdemoTests
//
//  Created by Suryanarayan Sahu on 08/02/24.
//

import XCTest
@testable import mvpdemo

final class HomeViewControllerTest: XCTestCase {
    
    var storyboard: UIStoryboard!
    var model: HomePageModel!
    
    override func setUp() {
        super.setUp()
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        model = HomePageModel(pageItems: ["Red", "Green", "Blue"], title: "Home Page")
    }
    
    func test_navigationTitleSetup() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertEqual(homeController.navigationController?.navigationBar.topItem?.title, model.pageTitle)
    }

    func test_topCellSetup() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertEqual(homeController.tableView(homeController.homeTableView, cellForRowAt: IndexPath(row: 0, section: 0)).textLabel?.text, model.items[0])
    }
    
    func test_MiddleCellSetup() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertEqual(homeController.tableView(homeController.homeTableView, cellForRowAt: IndexPath(row: 1, section: 0)).textLabel?.text, model.items[1])
    }
    
    func test_BottomCellSetup() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        XCTAssertEqual(homeController.tableView(homeController.homeTableView, cellForRowAt: IndexPath(row: 2, section: 0)).textLabel?.text, model.items[2])
    }

}


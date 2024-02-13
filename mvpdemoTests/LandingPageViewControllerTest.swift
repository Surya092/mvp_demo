//
//  LandingPageViewControllerTest.swift
//  mvpdemoTests
//
//  Created by Suryanarayan Sahu on 13/02/24.
//

import XCTest
@testable import mvpdemo

final class LandingPageViewControllerTest: XCTestCase {

    var storyboard: UIStoryboard!
    var model: HomePageModel!
    
    override func setUp() {
        super.setUp()
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        model = HomePageModel(pageItems: ["Red", "Green", "Blue"], title: "Home Page")
    }
    
    func test_LandingPageNavigation() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.tableView(homeController.homeTableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        RunLoop.current.run(until: Date())
        guard let _ = homeController.navigationController?.topViewController as? LandingPageViewController else {
            XCTFail()
            return
        }
    }
    
    func test_LabelSetup_MatchIndex() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.tableView(homeController.homeTableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        RunLoop.current.run(until: Date())
        let landingPageController = homeController.navigationController?.viewControllers[1] as! LandingPageViewController
        let _ = landingPageController.view
        landingPageController.viewDidLoad()
        XCTAssertEqual(landingPageController.pageLabel.text, model.items[0])
    }
    
    func test_LabelSetup_MismatchIndex() {
        let homeController = (storyboard.instantiateInitialViewController() as! UINavigationController).viewControllers.first as! HomeViewController
        homeController.presenter.model = model
        let _ = homeController.view
        homeController.viewDidLoad()
        homeController.tableView(homeController.homeTableView, didSelectRowAt: IndexPath(row: 0, section: 0))
        RunLoop.current.run(until: Date())
        let landingPageController = homeController.navigationController?.viewControllers[1] as! LandingPageViewController
        let _ = landingPageController.view
        landingPageController.viewDidLoad()
        XCTAssertNotEqual(landingPageController.pageLabel.text, model.items[1])
    }
    
}

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
    
    override func setUp() {
        super.setUp()
        storyboard = UIStoryboard(name: "Main", bundle: nil)
    }
    
    func test_LabelSetup() {
        let dataModel = LandingPageModel(label: "Red", title: "Green")
        let landingPageController = storyboard.instantiateViewController(withIdentifier: "LandingPageViewController") as! LandingPageViewController
        landingPageController.model = dataModel
        let _ = landingPageController.view
        landingPageController.viewDidLoad()
        XCTAssertEqual(landingPageController.pageLabel.text, dataModel.pageLabel)
    }
    
}

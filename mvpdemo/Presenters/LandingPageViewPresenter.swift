//
//  LandingPageViewPresenter.swift
//  mvpdemo
//
//  Created by Suryanarayan Sahu on 13/02/24.
//

import Foundation

protocol LandingPageViewPresenterProtocol {
    
}

class LandingPageViewPresenter {
    
    var model: LandingPageModel!
    var delegate: LandingPageViewPresenterProtocol!
    
    init(label: String, title: String) {
        self.model = LandingPageModel(label: label, title: title)
    }
    
    func getNavigationTitle() -> String {
        model.pageTitle
    }
    
    func getPageLabel() -> String {
        model.pageLabel
    }
}

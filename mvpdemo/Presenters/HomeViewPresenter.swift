//
//  HomeViewPresenter.swift
//  mvpdemo
//
//  Created by Suryanarayan Sahu on 08/02/24.
//

import Foundation
import UIKit

enum LabelType{
    case top
    case middle
    case bottom
}

protocol HomeViewPresenterProtocol {
    func updateHomeOnPageLoad(topBtnColor: UIColor, middleBtnColor: UIColor, bottomBtnColor: UIColor)
    func updateLabelOnTap(labelText: String)
}

class HomeViewPresenter {
    
    var model = HomePageColorModel(topBtnColor: UIColor.black, middleBtnColor: UIColor.yellow, bottomBtnColor: UIColor.blue)
    var delegate: HomeViewPresenterProtocol!
    
    func updatePageonLoad() {
        self.delegate.updateHomeOnPageLoad(topBtnColor: model.topButtonColor, middleBtnColor: model.middleButtonColor, bottomBtnColor: model.bottomButtonColor)
        self.delegate.updateLabelOnTap(labelText: "No Button Tapped")
    }
    
    func updateButtonAction(type: LabelType) {
        switch type {
        case .top:
            self.delegate.updateLabelOnTap(labelText: "Top Button Tapped")
        case .middle:
            self.delegate.updateLabelOnTap(labelText: "Middle Button Tapped")
        case .bottom:
            self.delegate.updateLabelOnTap(labelText: "Bottom Button Tapped")
        }
    }
    
}

//
//  HomeViewController.swift
//  mvcdemo
//
//  Created by Suryanarayan Sahu on 07/02/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var buttonLabel: UILabel!
    
    var presenter = HomeViewPresenter()
    
    // MARK: View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
        presenter.updatePageonLoad()
    }
    
    // MARK: Button Actions
    
    @IBAction func topButtonTapped(_ sender: Any) {
        presenter.updateButtonAction(type: .top)
    }
    
    @IBAction func middleButtonTapped(_ sender: Any) {
        presenter.updateButtonAction(type: .middle)
    }
    
    @IBAction func bottomButtonTapped(_ sender: Any) {
        presenter.updateButtonAction(type: .bottom)
    }
    
}

//MARK: HomeView Extension
extension HomeViewController: HomeViewPresenterProtocol {
    func updateHomeOnPageLoad(topBtnColor: UIColor, middleBtnColor: UIColor, bottomBtnColor: UIColor) {
        self.topButton.backgroundColor = topBtnColor
        self.middleButton.backgroundColor = middleBtnColor
        self.bottomButton.backgroundColor = bottomBtnColor
    }
    
    func updateLabelOnTap(labelText: String) {
        self.buttonLabel.text = labelText
    }
}


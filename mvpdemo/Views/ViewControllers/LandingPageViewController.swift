//
//  LandingPageViewController.swift
//  mvpdemo
//
//  Created by Suryanarayan Sahu on 13/02/24.
//

import UIKit

class LandingPageViewController: UIViewController {
    
    @IBOutlet weak var pageLabel: UILabel!
    
    var dataLabel: String = ""
    var pageTitle: String = ""
    var presenter: LandingPageViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LandingPageViewPresenter(label: dataLabel, title: pageTitle)
        presenter.delegate = self
        navigationController?.navigationBar.topItem?.title = presenter.getNavigationTitle()
        self.pageLabel.text = presenter.getPageLabel()
    }

}

//MARK: Presenter Callbacks
extension LandingPageViewController: LandingPageViewPresenterProtocol {
    
}

//
//  LandingPageViewController.swift
//  mvpdemo
//
//  Created by Suryanarayan Sahu on 13/02/24.
//

import UIKit

class LandingPageViewController: UIViewController {
    
    @IBOutlet weak var pageLabel: UILabel!
    
    var presenter: LandingPageViewPresenter!
    var model: LandingPageModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LandingPageViewPresenter(dataModel: model)
        presenter.delegate = self
        navigationController?.navigationBar.topItem?.title = presenter.getNavigationTitle()
        self.pageLabel.text = presenter.getPageLabel()
    }

}

//MARK: Presenter Callbacks
extension LandingPageViewController: LandingPageViewPresenterProtocol {
    
}

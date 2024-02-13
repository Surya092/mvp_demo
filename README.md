This project contains a simple code setup of ViewController having an embedded navigation controller and tableview. The data for the tableview is processed from the preseneter. On tapping any cell on the tableview a new viewcontroller is pushed to the navigation stack. The code adheres to MVP Design Pattern as per structural conformance where ViewController or View acts as View while Presenter acts as the brain of the setup.

The model instance is loosely coupled to Presenter to achieve Dependency injection on Testcases. 
The View is isolated from model. The view receives action and updates the same to presenter. Presenter acts as the intelligence unit and updates the model and asks the view to update self.

The code base has presenter setup which has a one to one relationship with View. The presenter ends up getting tightly coupled to the view and subviews in it. This tight coupling creates limitation on testing and resusability. The navigation happens via the view
 
To solve this we can dive to MVVM approach where ViewModel is the driving unit which resolves the said problem



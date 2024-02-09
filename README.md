This project contains a simple code setup of three buttons which are populated on a ViewController. The data related to button color is populated via Model and intelligence is written on Presenter. The Viewcontroller or view acts as a layer which passively updates the UI. The tapping action on button shows the last tapped button. The code adheres to MVP Design Pattern as per structural conformance where ViewController or View acts as View while Presenter acts as the brain of the setup.

The model instance is loosely coupled to Presenter to achieve Dependency injection on Testcases. 
The View is isolated from model. The Model instance updates the date as per the direction of Presenter and the presenter directs the view to update the UI and also receives input from view

The loose coupling of View, Presenter and Model allows writing test cases in modular way. The code base has presenter setup which is mostly a one to one relationship with View ending up creating too much of boiler plate code and limitation of reusability across the project.
 
To solve this we can dive to MVVM approach where ViewModel can be broken down to achieve flexible reusability and a greater control on test suite setup



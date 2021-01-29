//
//  AirportListRouter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

final class AirportListRouter: PresenterToRouterAirportListProtocol, TabBarViewProtocol {
    
    var tabIcon: UIImage = UIImage(named: "listIcon")!
    var tabTitle: String = "Lista"
    
    static func createModule() -> UIViewController {
        let airportVC = AirportListViewController()
        let presenter: ViewToPresenterAirportListProtocol & InteractorToPresenterAirportListProtocol = AirportListPresenter()
        
        airportVC.presenter = presenter
        airportVC.presenter?.router = AirportListRouter()
        airportVC.presenter?.view = airportVC
        airportVC.presenter?.interactor = AirportListInteractor()
        
        return airportVC
    }
    
    func configuredViewController() -> UIViewController {
        let airportVC = AirportListViewController()
        let presenter: ViewToPresenterAirportListProtocol & InteractorToPresenterAirportListProtocol = AirportListPresenter()
        
        airportVC.presenter = presenter
        airportVC.presenter?.router = AirportListRouter()
        airportVC.presenter?.view = airportVC
        airportVC.presenter?.interactor = AirportListInteractor()
        
        return airportVC
    }
    
    func configuredViewController<T>(with value: T) -> UIViewController {return UIViewController()}
}

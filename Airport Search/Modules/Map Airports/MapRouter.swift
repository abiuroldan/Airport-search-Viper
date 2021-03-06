//
//  MapRouter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class MapRouter: PresenterToRouterMapProtocol, TabBarViewProtocol {
    
    var tabTitle: String = "MapView"
    var tabIcon: UIImage = UIImage(named:"LocationPin")!
    
    static func createModule(with radious: CGFloat) -> UIViewController {
        print("MapSearchRouter creates the MapAirportsController module.")
        
        let viewController = MapViewController()
        let presenter: ViewToPresenterMapProtocol & InteractorToPresenterMapProtocol = MapPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MapRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MapInteractor()
        viewController.presenter?.interactor?.radious = radious
        
        return viewController
    }
    
    func configuredViewController() -> UIViewController { return UIViewController()}
    
    func configuredViewController<T>(with value: T) -> UIViewController? {
        print("MapSearchRouter creates the MapAirportsController module.")
        
        let viewController = MapViewController()
        let presenter: ViewToPresenterMapProtocol & InteractorToPresenterMapProtocol = MapPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MapRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MapInteractor()
        viewController.presenter?.interactor?.radious = value as? CGFloat ?? 0.1
        
        return viewController
    }
}

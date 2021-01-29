//
//  HomeRouter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class HomeRouter: PresenterToRouterHomeProtocol {
    static func createModule() -> UINavigationController {
        print("HomeRouter creates the Home Radious Search module.")
        let viewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let presenter: ViewToPresenterHomeProtocol & InteractorToPresenterHomeProtocol = HomePresenter()
                
        viewController.presenter = presenter
        viewController.presenter?.router = HomeRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = HomeInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return navigationController
    }
    
    func pushToMapAirportsSearch(on view: PresenterToViewHomeProtocol, with radious: CGFloat) {
        print("HomeRouter is instructed to push MapAirportsViewController onto the navigation stack.")
        let quoteDetailViewController = MapRouter.createModule(with: radious)
        
        let viewController = view as! HomeViewController
                viewController.navigationController?
                    .pushViewController(quoteDetailViewController, animated: true)
    }
}

//
//  TabBarRouter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class TabBarRouter: PresenterToRouterTabBarProtocol {
    static func createTabBarModule(radious: CGFloat, with views: [TabBarViewProtocol]) -> UITabBarController {
        
        let tabBar = TabBarViewController()
        let presenter: ViewToPresenterTabBarProtocol & InteractorToPresenterTabBarProtocol = TabBarPresenter()
        
        tabBar.presenter = presenter
        tabBar.presenter?.router = TabBarRouter()
        tabBar.presenter?.view = tabBar
        tabBar.presenter?.interactor = TabBarInteractor()
        tabBar.presenter?.interactor?.presenter = presenter
        
        var viewControllers = [UIViewController]()
        
        for (index, view) in views.enumerated() {
            let tabBarItem = UITabBarItem()
            tabBarItem.title = view.tabTitle
            tabBarItem.image = view.tabIcon
            let vc = index == 0 ? view.configuredViewController(with: radious) : view.configuredViewController()
            vc?.tabBarItem = tabBarItem
            if let controller = vc {
                viewControllers.append(controller)
            }
        }
        
        tabBar.viewControllers = viewControllers
        
        return tabBar
    }
}

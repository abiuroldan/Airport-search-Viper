//
//  TabBarRouter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class TabBarRouter: PresenterToRouterTabBarProtocol {
    static func createTabBarModule(with views: [TabBarViewProtocol]) -> UITabBarController {
        
        let tabBar = TabBarViewController()
        let presenter: ViewToPresenterTabBarProtocol & InteractorToPresenterTabBarProtocol = TabBarPresenter()
        
        tabBar.presenter = presenter
        tabBar.presenter?.router = TabBarRouter()
        tabBar.presenter?.view = tabBar
        tabBar.presenter?.interactor = TabBarInteractor()
        tabBar.presenter?.interactor?.presenter = presenter
        
        var viewControllers = [UIViewController]()
        
        for view in views {
            print(view.tabTitle)
            let tabBarItem = UITabBarItem()
            tabBarItem.title = view.tabTitle
            tabBarItem.image = view.tabIcon
            let vc = view.configuredViewController()
            vc.title = view.tabTitle
            print(vc.navigationItem)
            vc.tabBarItem = tabBarItem
            viewControllers.append(vc)
        }
        
        tabBar.viewControllers = viewControllers
        
        return tabBar
    }
}

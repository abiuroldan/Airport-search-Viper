//
//  TabBarPresenter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import Foundation

final class TabBarPresenter: ViewToPresenterTabBarProtocol {
    
    // MARK: Properties
    var view: PresenterToViewTabBarProtocol?
    var interactor: PresenterToInteractorTabBarProtocol?
    var router: PresenterToRouterTabBarProtocol?
}

extension TabBarPresenter: InteractorToPresenterTabBarProtocol {}

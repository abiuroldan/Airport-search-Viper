//
//  TabBarContract.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterTabBarProtocol: class {
    var view: PresenterToViewTabBarProtocol? { get set }
    var interactor: PresenterToInteractorTabBarProtocol? { get set }
    var router: PresenterToRouterTabBarProtocol? { get set }
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewTabBarProtocol: class {
    var presenter: ViewToPresenterTabBarProtocol? { get set }
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorTabBarProtocol: class {
    var presenter: InteractorToPresenterTabBarProtocol? { get set }
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterTabBarProtocol: class {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterTabBarProtocol: class {
    static func createTabBarModule(radious: CGFloat, with views: [TabBarViewProtocol]) -> UITabBarController
}

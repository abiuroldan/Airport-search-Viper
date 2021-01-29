//
//  Home Contract.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
@objc protocol ViewToPresenterHomeProtocol: class {
    var view: PresenterToViewHomeProtocol? { get set }
    var interactor: PresenterToInteractorHomeProtocol? { get set }
    var router: PresenterToRouterHomeProtocol? { get set }
    var radious: NSNumber? { get set }
    func viewDidLoad()
    func valueSelected(_ sender: UISlider)
}

// MARK: View Output (Presenter -> View)
@objc protocol PresenterToViewHomeProtocol: class {
    func showHUD()
    func hideHUD()
    func updateRadiosValue(with value: Int)
}

// MARK: Interactor Input (Presenter -> Interactor)
@objc protocol PresenterToInteractorHomeProtocol: class {
    var presenter: InteractorToPresenterHomeProtocol? { get set }
    func loadQuotes()
}

// MARK: Interactor Output (Interactor -> Presenter)
@objc protocol InteractorToPresenterHomeProtocol: class {
    func getQuoteFailure()
}

// MARK: Router Input (Presenter -> Router)
@objc protocol PresenterToRouterHomeProtocol: class {
    static func createModule() -> UINavigationController
    func pushToMapAirportsSearch(on view: PresenterToViewHomeProtocol, with radious: CGFloat) 
}

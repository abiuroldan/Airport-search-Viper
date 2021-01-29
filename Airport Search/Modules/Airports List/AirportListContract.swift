//
//  AirportListContract.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterAirportListProtocol: class {
    var view: PresenterToViewAirportListProtocol? { get set }
    var interactor: PresenterToInteractorAirportListProtocol? { get set }
    var router: PresenterToRouterAirportListProtocol? { get set }
    func viewDidload()
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewAirportListProtocol: class {
    func showLoader()
    func hideLoader()
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorAirportListProtocol: class {
    var presenter: InteractorToPresenterAirportListProtocol? { get set }
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterAirportListProtocol: class {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterAirportListProtocol: class {
    static func createModule() -> UIViewController
}

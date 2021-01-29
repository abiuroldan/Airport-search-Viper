//
//  MapContract.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMapProtocol: class {
    var view: PresenterToViewMapProtocol? { get set }
    var interactor: PresenterToInteractorMapProtocol? { get set }
    var router: PresenterToRouterMapProtocol? { get set }
    func viewDidLoad()
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewMapProtocol: class {
    func onGetImageFromURLSuccess()
    func onGetImageFromURLFailure()
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMapProtocol: class {
    var presenter: InteractorToPresenterMapProtocol? { get set }
    
    var radious: CGFloat? { get set }
    
    func getImageDataFromURL()
}

// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMapProtocol: class {
    func getImageFromURLSuccess()
    func getImageFromURLFailure()
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMapProtocol: class {
    static func createModule(with radious: CGFloat) -> UIViewController
}

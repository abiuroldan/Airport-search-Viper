//
//  HomePresenter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class HomePresenter: ViewToPresenterHomeProtocol {
    
    // MARK: Properties
    weak var view: PresenterToViewHomeProtocol?
    var interactor: PresenterToInteractorHomeProtocol?
    var router: PresenterToRouterHomeProtocol?
    var radious: NSNumber?
    
    // MARK: Inputs from view
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        interactor?.loadQuotes()
    }
    
    @objc func valueSelected(_ sender: UISlider) {
        let valueToShow:Int = Int(sender.value * 100)
        print("Value selected", valueToShow)
        radious = NSNumber(value: sender.value)
        view?.updateRadiosValue(with: valueToShow)
    }
}

// MARK: - Outputs to view
extension HomePresenter: InteractorToPresenterHomeProtocol {
    func getQuoteFailure() {
        print("getQuoteFailure")
    }
}

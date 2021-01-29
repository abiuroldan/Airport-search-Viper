//
//  AirportListPresenter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import Foundation

final class AirportListPresenter: ViewToPresenterAirportListProtocol {
    
    // MARK: Properties
    var view: PresenterToViewAirportListProtocol?
    var interactor: PresenterToInteractorAirportListProtocol?
    var router: PresenterToRouterAirportListProtocol?
    
    func viewDidload() {
        
    }
}

extension AirportListPresenter: InteractorToPresenterAirportListProtocol {}

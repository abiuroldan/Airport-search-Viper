//
//  MapPresenter.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import Foundation

final class MapPresenter: ViewToPresenterMapProtocol {
    
    //MARK: Properties
    weak var view: PresenterToViewMapProtocol?
    var interactor: PresenterToInteractorMapProtocol?
    var router: PresenterToRouterMapProtocol?
    
    func viewDidLoad() {
        print("Map view didload")
        interactor?.getImageDataFromURL()
    }
}

extension MapPresenter: InteractorToPresenterMapProtocol {
    func getImageFromURLSuccess() {
        print("getImageFromURLSuccess")
    }
    
    func getImageFromURLFailure() {
        print("getImageFromURLFailure")
    }
}

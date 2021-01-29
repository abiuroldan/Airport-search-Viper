//
//  MapInteractor.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class MapInteractor: PresenterToInteractorMapProtocol {
    
    //MARK: Properties
    var radious: CGFloat?
    var presenter: InteractorToPresenterMapProtocol?
    
    func getImageDataFromURL() {
        // call backend
        
        print("getImageDataFromURL")
    }
}

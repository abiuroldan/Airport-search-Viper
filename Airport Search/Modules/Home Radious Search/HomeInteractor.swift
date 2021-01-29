//
//  HomeInteractor.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import Foundation

final class HomeInteractor: PresenterToInteractorHomeProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterHomeProtocol?
    
    func loadQuotes() {
        print("loadQuotes")
    }
}

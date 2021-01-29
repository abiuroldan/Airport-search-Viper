//
//  AirportListViewController.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

final class AirportListViewController: UIViewController {
    
    // MARK: Properties
    let rootView = AirportListRootView()
    var presenter: ViewToPresenterAirportListProtocol?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidload()
    }
}

extension AirportListViewController: PresenterToViewAirportListProtocol {
    func showLoader() {
        print("showLoader")
    }
    
    func hideLoader() {
        print("hideLoader")
    }
}

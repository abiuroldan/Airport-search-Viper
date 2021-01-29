//
//  AirportListViewController.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

class CustomController: UIViewController {
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        parent?.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class AirportListViewController: CustomController {
    
    // MARK: Properties
    let rootView = AirportListRootView()
    var presenter: ViewToPresenterAirportListProtocol?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

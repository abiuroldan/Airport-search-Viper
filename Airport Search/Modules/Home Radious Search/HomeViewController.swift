//
//  HomeViewController.swift
//  Airport Search
//
//  Created by Abiú Roldán on 27/01/21.
//

import UIKit
import MapKit

final class HomeViewController: UIViewController {
    
    // MARK: - Properties
    let rootView = HomeRootView()
    var presenter: ViewToPresenterHomeProtocol?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        addTargets()
    }
    
    private func addTargets() {
        rootView.searchButton.addTarget(self, action: #selector(goToMapAction), for: .touchUpInside)
        rootView.slider.addTarget(presenter, action: #selector(presenter?.valueSelected(_:)), for: .valueChanged)
    }

    @objc func goToMapAction() {
        let c: CGFloat = CGFloat(exactly: presenter?.radious ?? 0) ?? 0.0
        presenter?.router?.pushToMapAirportsSearch(on: self, with: c)
    }
}

extension HomeViewController: PresenterToViewHomeProtocol {
    
    func updateRadiosValue(with value: Int) {
        rootView.kmLabel.text = "\(value)"
    }
    
    func showHUD() {
        print("Show")
    }
    
    func hideHUD() {
        print("Hide")
    }
}

//
//  TabBarViewController.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    // MARK: - Properties
    var presenter: ViewToPresenterTabBarProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.unselectedItemTintColor = .white
        tabBar.tintColor = .black
        tabBar.barTintColor = Colors.grayAppColor
    }
}

extension TabBarViewController: PresenterToViewTabBarProtocol {}

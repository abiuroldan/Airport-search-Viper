//
//  TabBarViewProtocol.swift
//  Airport Search
//
//  Created by Abiú Roldán on 28/01/21.
//

import Foundation
import UIKit

protocol TabBarViewProtocol {
    var tabIcon: UIImage { get }
    var tabTitle: String { get }
    
    func configuredViewController() -> UIViewController
    func configuredViewController<T>(with value: T) -> UIViewController
}

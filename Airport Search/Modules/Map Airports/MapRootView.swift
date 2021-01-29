//
//  MapRootView.swift
//  Airport Search
//
//  Created by Abiú Roldán on 27/01/21.
//

import UIKit
import MapKit

final class MapRootView: UIView {
    
    lazy var mapView: MKMapView = {
        let map = MKMapView()
        return map
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(mapView)
        mapView.fullScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

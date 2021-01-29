//
//  MapViewController.swift
//  Airport Search
//
//  Created by Abiú Roldán on 27/01/21.
//

import UIKit
import CoreLocation
import MapKit

final class MapViewController: UIViewController {
    
    // MARK: - Properties
    let rootView = MapRootView()
    var presenter: ViewToPresenterMapProtocol?
    
//    var location: CGFloat = 0.0
    
    lazy var radious = CLLocationDegrees(presenter?.interactor?.radious ?? 0.0)
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
//        rootView.mapView.centerToLocation(initialLocation)
        presenter?.viewDidLoad()
        
        print("Location in map screen", radious)
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: radious, longitudeDelta: radious) //(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(21.282778, -157.829444)
               
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        rootView.mapView.setRegion(region, animated: true)
    }
}

extension MapViewController: PresenterToViewMapProtocol {
    func onGetImageFromURLSuccess() {
        print("onGetImageFromURLSuccess")
    }
    
    func onGetImageFromURLFailure() {
        print("onGetImageFromURLFailure")
    }
}

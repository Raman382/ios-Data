//
//  ViewController.swift
//  MKMapView
//
//  Created by trainee on 09/12/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let Location = CLLocationCoordinate2D(latitude: 31.6340,
                                            longitude: 74.8723)

        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: Location, span: span)
        mapView.setRegion(region, animated: true)

        let annotation = MKPointAnnotation()
        annotation.coordinate = Location
        annotation.title = "Amritsar"
        mapView.addAnnotation(annotation)
    }


}




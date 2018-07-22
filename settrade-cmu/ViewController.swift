//
//  ViewController.swift
//  settrade-cmu
//
//  Created by PATTARASAI on 20/7/2561 BE.
//  Copyright © 2561 PATTARASAI. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapWithSttAddress: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let sttLocation: CLLocation = CLLocation(latitude: 13.763877, longitude: 100.56770770000003)
        let sttLocationCor2D = CLLocationCoordinate2D(latitude: 13.763877, longitude: 100.56770770000003)
        let coordinateRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(sttLocation.coordinate,
                                                                  1000, 1000);
        mapWithSttAddress.setRegion(coordinateRegion, animated: true)
        
        let sttAnnotation = MKPointAnnotation();
        sttAnnotation.title = "Settrade, co. ltd";
        sttAnnotation.coordinate = sttLocationCor2D;

        mapWithSttAddress.addAnnotation(sttAnnotation);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


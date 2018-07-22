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
    let STT_LOCATION_LATITUDE = 13.763877;
    let STT_LOCATION_LONGTITUDE = 100.56770770000003;
    
    @IBOutlet weak var mapWithSttAddress: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeSttLocationOnMap()
        disableMapGetsure()
    }
    
    func initializeSttLocationOnMap() {
        let sttLocation: CLLocation = CLLocation(latitude: self.STT_LOCATION_LATITUDE, longitude: self.STT_LOCATION_LONGTITUDE)
        let sttLocationCor2D = CLLocationCoordinate2D(latitude: self.STT_LOCATION_LATITUDE, longitude: self.STT_LOCATION_LONGTITUDE)
        let coordinateRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(sttLocation.coordinate,
                                                                                      1000, 1000);
        self.mapWithSttAddress.setRegion(coordinateRegion, animated: true)
        
        let sttAnnotation = MKPointAnnotation();
        sttAnnotation.title = "Settrade, co. ltd";
        sttAnnotation.coordinate = sttLocationCor2D;
        
        self.mapWithSttAddress.addAnnotation(sttAnnotation);
    }
    
    func disableMapGetsure() {
        self.mapWithSttAddress.isZoomEnabled = false;
        self.mapWithSttAddress.isScrollEnabled = false;
        self.mapWithSttAddress.isUserInteractionEnabled = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


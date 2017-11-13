//
//  ChaseTheBurgerViewController.swift
//  RunFattyRun
//
//  Created by Lazaros Totsas on 30/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import Alamofire

class ChaseTheBurgerViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var selectedFood : Food?
    var selectedResturant : Resturant?
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setup Map View
        mapView.delegate = self
        mapView.showsScale = true
        mapView.showsCompass = true
        mapView.showsPointsOfInterest = true
        mapView.showsUserLocation = true
        
        // Location Manager - Requests
        //locationManager.requestAlwaysAuthorization() // Interesting for later
        locationManager.requestWhenInUseAuthorization()
        
        // Star Location Services
        if(CLLocationManager.locationServicesEnabled()){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        // Source Coordinates
        let sourceCoordinates = locationManager.location?.coordinate
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinates!)
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        
        // Destination Coordinates
        let destCoordinates = CLLocationCoordinate2DMake(55.395804, 10.337553)
        let destPlacemark = MKPlacemark(coordinate: destCoordinates)
        let destItem = MKMapItem(placemark: destPlacemark)
        
        // Direction Request
        let directionRequest = MKDirectionsRequest()
        directionRequest.source = sourceItem
        directionRequest.destination = destItem
        directionRequest.transportType = .walking
        
        let directions = MKDirections(request: directionRequest)
        directions.calculate(completionHandler: {
            response, error in
            
            guard let response = response else {
                if let error = error {
                    print("Could not get proper directions: "+error.localizedDescription)
                }
                return
            }
            
            let route = response.routes[0]
            self.mapView.add(route.polyline, level: .aboveRoads)
            
            let rekt = route.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegionForMapRect(rekt), animated: true)
            
        })
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.red
        renderer.lineWidth = 5.0
        
        return renderer
    }
    
    /*
    func zoomToRegion() {
        let location = CLLocationCoordinate2D(latitude: 13.03297, longitude: 80.26518)
        let region = MKCoordinateRegionMakeWithDistance(location, 5000.0, 7000.0)
        mapView.setRegion(region, animated: true)
    }
     */

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let food = selectedFood {
            caloriesLabel.text = "Calories : \(food.calories)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

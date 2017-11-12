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

class ChaseTheBurgerViewController: UIViewController {
    
    var selectedFood : Food?
    var selectedResturant : Resturant?
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let google_req = "https://maps.googleapis.com/maps/api/directions/json?origin=55.366066,10.450456&destination=55.395804,%2010.337553&mode=walking&units=metric&sensor=true&key=AIzaSyAqMBr59fqLPJ6dtBNHCsHRdD1bG2LFZNc"
        
        
        Alamofire.request(google_req).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
                

            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
        
        
        let point1 = CLLocationCoordinate2DMake(10.3991108, 55.3954652);
        let point2 = CLLocationCoordinate2DMake(55.3768688, 10.433707);
        let point3 = CLLocationCoordinate2DMake(55.3678488, 10.4494826);
        let point4 = CLLocationCoordinate2DMake(55.3755678, 10.4266746);
        let point5 = CLLocationCoordinate2DMake(-73.761105, 41.017791);
        
        let points: [CLLocationCoordinate2D]
        points = [point1, point2, point3, point4, point5]
        
        let geodesic = MKGeodesicPolyline(coordinates: points, count: 5)
        mapView.add(geodesic)
        mapView.showsCompass = true
        
        

        //mapView.add(<#T##overlay: MKOverlay##MKOverlay#>)
    }
    
    func zoomToRegion() {
        let location = CLLocationCoordinate2D(latitude: 13.03297, longitude: 80.26518)
        let region = MKCoordinateRegionMakeWithDistance(location, 5000.0, 7000.0)
        mapView.setRegion(region, animated: true)
    }
    
    /*
    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        if overlay is MKPolyline {
            var polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.blue
            polylineRenderer.lineWidth = 5
            return polylineRenderer
        }
        
        return nil
    }
 */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let food = selectedFood {
            caloriesLabel.text = "Calories : \(food.calories)"
        }
        /*
        
        var points: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
        
        points.append(CLLocationCoordinate2DMake(10.3991108, 55.3954652))
        points.append(CLLocationCoordinate2DMake(10.4991108, 55.4954652))
        points.append(CLLocationCoordinate2DMake(11.4991108, 56.4954652))
        
        var polyline = MKPolyline(coordinates: &points, count: points.count)
        mapView.add(polyline)
 */
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

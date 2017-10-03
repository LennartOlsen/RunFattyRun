//
//  RestaurantListViewController.swift
//  RunFattyRun
//
//  Created by Lazaros Totsas on 30/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation
import UIKit

class RestaurantListViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var searchForBurger : Int?
    
    var resturants = [
        Resturant(Name: "Mc Donalds Odense M.", Lat: 55.10, Lng: 10.44),
        Resturant(Name: "Mc Donalds Copenhagen", Lat: 55.10, Lng: 12.55)
    ]
    
    @IBOutlet weak var listRestaurants: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return resturants.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.detailTextLabel?.text = resturants[indexPath.row].name
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
}

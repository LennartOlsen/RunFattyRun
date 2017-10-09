//
//  ChaseTheBurgerViewController.swift
//  RunFattyRun
//
//  Created by Lazaros Totsas on 30/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation
import UIKit

class ChaseTheBurgerViewController: UIViewController {
    
    var selectedFood : Food?
    var selectedResturant : Resturant?
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
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

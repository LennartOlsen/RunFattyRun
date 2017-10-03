//
//  FoodListViewController.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 20/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation

import UIKit

class FoodListViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var foodDescriptionLabel: UILabel!
    @IBOutlet weak var foodPicker: UIPickerView!
    @IBOutlet weak var foodCaloriesLabel: UILabel!
    
    let allFood = FoodBank()
    var selectedFood : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.foodPicker.delegate = self
        self.foodPicker.dataSource = self
        self.foodDescriptionLabel.text = allFood.foodList[selectedFood].description
        self.foodCaloriesLabel.text = String(allFood.foodList[selectedFood].calories)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allFood.foodList.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "bs"
    }*/
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let attributedString = NSAttributedString(string: allFood.foodList[row].name, attributes: [NSForegroundColorAttributeName : UIColor.white])
        return attributedString
    }
    
    // Capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedFood = row
        updateUI()
        print(row)
    }
    
    @IBAction func findMeTheBurger(_ sender: Any) {
        performSegue(withIdentifier: "goToRestaurantsView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToRestaurantsView" {
            let destinationVC = segue.destination as! ResturantTableViewController
            destinationVC.searchForBurger = selectedFood
        }
    }
    
    func updateUI() {
        self.foodDescriptionLabel.text = allFood.foodList[selectedFood].description
        self.foodCaloriesLabel.text = String(allFood.foodList[selectedFood].calories)
    }
}


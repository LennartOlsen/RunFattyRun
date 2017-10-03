//
//  foodBank.swift
//  RunFattyRun
//
//  Created by Lazaros Totsas on 29/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation

class FoodBank {
    
    var foodList = [Food]()
    
    init() {
        foodList.append(Food(
            foodName: "Mc Hamburger",
            foodDescription : "Delicius Burger Food",
            foodCalories : 100,
            foodImage : "skata1.jpg"))
        foodList.append(Food(foodName: "Mc Cheeseburger", foodDescription : "Nice burger with nice cheese", foodCalories : 122, foodImage : "skata2.jpg"))
        foodList.append(Food(foodName: "Mc BigMac", foodDescription : "Burger with greens and stuff", foodCalories : 123, foodImage : "skata3.jpg"))
        foodList.append(Food(foodName: "Mc SmallerMac", foodDescription : "Smaller burger with greens", foodCalories : 1534, foodImage : "skata4.jpg"))
    }
}

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
        // List obtained from: https://www.mcdonalds.com/us/en-us/about-our-food/nutrition-calculator.html
        foodList.append(Food(foodName: "Hamburger", foodDescription : "",                                           foodCalories : 250, foodImage : "t-mcdonalds-Hamburger.png"))
        foodList.append(Food(foodName: "Cheeseburger", foodDescription : "",                                        foodCalories : 300, foodImage : "t-mcdonalds-Cheeseburger.png"))
        foodList.append(Food(foodName: "McDouble®", foodDescription : "",                                           foodCalories : 380, foodImage : "t-mcdonalds-McDouble.png"))
        foodList.append(Food(foodName: "Double Cheeseburger", foodDescription : "",                                 foodCalories : 430, foodImage : "t-mcdonalds-Double-Cheeseburger.png"))
        foodList.append(Food(foodName: "Big Mac®", foodDescription : "",                                            foodCalories : 540, foodImage : "t-mcdonalds-Big-Mac.png"))
        foodList.append(Food(foodName: "Quarter Pounder® with Cheese", foodDescription : "",                        foodCalories : 530, foodImage : "t-mcdonalds-Quarter-Pounder-with-Cheese.png"))
        foodList.append(Food(foodName: "Signature Sriracha 1/4 lb. Burger", foodDescription : "",                   foodCalories : 580, foodImage : "t-mcdonalds-picoguac-sesame.png"))
        foodList.append(Food(foodName: "Signature Sriracha 1/4 lb. Burger", foodDescription : "",                   foodCalories : 670, foodImage : "t-mcdonalds-sriracha-burger.png"))
        foodList.append(Food(foodName: "Sweet BBQ Bacon with 100% Pure Beef 1/4 lb. Patty", foodDescription : "",   foodCalories : 700, foodImage : "t-mcdonalds-sweetbbqbacon-sesame.png"))
        foodList.append(Food(foodName: "Double Quarter Pounder® with Cheese", foodDescription : "",                 foodCalories : 770, foodImage : "t-mcdonalds-Double-Quarter-Pounder-with-Cheese.png"))
    }
}

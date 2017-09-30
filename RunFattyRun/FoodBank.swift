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
        foodList.append(Food(foodName: "skata1", foodDescription : "nsdans sadjkhasjkd jasdkjh sjkdh as ddjhakjshdkja adhkj ashdka sajd asd aj dkjasdjkhajkgkjfk gkfd fjdshgks", foodCalories : 100, foodImage : "skata1.jpg"))
        foodList.append(Food(foodName: "skata2", foodDescription : "aposkata2", foodCalories : 122, foodImage : "skata2.jpg"))
        foodList.append(Food(foodName: "skata3", foodDescription : "aposkata3", foodCalories : 123, foodImage : "skata3.jpg"))
        foodList.append(Food(foodName: "skata4", foodDescription : "aposkata4", foodCalories : 1534, foodImage : "skata4.jpg"))
    }
}

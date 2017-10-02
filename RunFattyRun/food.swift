//
//  food.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 20/09/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import Foundation

class Food {
    let name : String = ""
    let description : String? = nil
    let calories : Int = 0
    let image : String = "" /** Should be a reference to the burger image **/
    
    init(foodName: String, foodDescription: String, foodCalories: Int, foodImage: String) {
        name = foodName
        description = foodDescription
        calories = foodCalories
        image = foodImage
    }
}

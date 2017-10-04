//
//  ResturantTableViewController.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 03/10/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import UIKit

/**
 * TODO : Could be a UITableViewController, but creates sporadic errors
 **/
class ResturantTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var searchForBurger : Int?
    
    var resturantList : [Resturant] = []
    
    @IBOutlet weak var selectedBurgerLabel: UILabel!
    
    var allFoods = FoodBank()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resturantList = ResturantRepository().getAll()
        
        if let burgerSearch = searchForBurger {
            let burger = allFoods.foodList[burgerSearch]
            selectedBurgerLabel.text = burger.name
        } else {
            selectedBurgerLabel.text = "???"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantList.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "ResturantTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? ResturantTableViewCell else {
            fatalError("Holy smack")
        }
        
        let resturant = resturantList[indexPath.row]
        
        cell.nameLabel.text = resturant.name

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToChaseTheBurgerView" {
            let destinationVC = segue.destination as! ChaseTheBurgerViewController
            destinationVC.searchForBurger = selectedFood
        }
    }*/

}

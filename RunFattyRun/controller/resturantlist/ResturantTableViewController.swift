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
 * For more info see https://medium.com/@jeremysh/creating-a-sticky-header-for-a-uitableview-40af71653b55
 **/
class ResturantTableViewController: UIViewController, UITableViewDelegate {
    
    var searchForBurger : Int?
    
    var selectedFood : Food?
    var selectedResturant : Resturant?
    
    var resturantList : [Resturant] = []
    
    
    /** TableView and HeaderView **/
    @IBOutlet var tableView : UITableView!
    
    var allFoods = FoodBank()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resturantList = ResturantRepository().getAll()
    }
    
    override func viewWillAppear(_ animated : Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToChaseTheBurgerView" {
            let destinationVC = segue.destination as! ChaseTheBurgerViewController
            if let food = selectedFood {
                destinationVC.selectedFood = food
            }
            if let resturant = selectedResturant {
                destinationVC.selectedResturant = resturant
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
        self.selectedResturant = resturantList[indexPath.row]
        self.performSegue(withIdentifier: "goToChaseTheBurgerView", sender: self)
    }
}

extension ResturantTableViewController:UITableViewDataSource {
    
    // MARK: - Table view data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
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
        if let label = cell.nameLabel{
            label.text = resturant.name
        } else {
            cell.textLabel?.text = resturant.name
        }
        
        return cell
    }
    
}

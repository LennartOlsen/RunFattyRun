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
    
    @IBOutlet weak var selectedBurgerLabel: UILabel!
    
    /** TableView and HeaderView **/
    @IBOutlet var tableView : UITableView!
    var headerView : StickyListHeaderView!
    var headerHeightConstraint : NSLayoutConstraint!
    
    var allFoods = FoodBank()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resturantList = ResturantRepository().getAll()
        
        view.backgroundColor = UIColor.black /** <-- To change **/
        
        setUpHeader()
        setUpView()
        
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
    
    func setUpView(){
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        let constraints:[NSLayoutConstraint] = [
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        tableView.register(ResturantTableViewCell.self,forCellReuseIdentifier: "ResturantTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
        self.selectedResturant = resturantList[indexPath.row]
        self.performSegue(withIdentifier: "goToChaseTheBurgerView", sender: self)
    }
    
    func setUpHeader(){
        var bgImage = UIImage(named: "burgerImageName")
        if let burgerImageName = selectedFood?.image {
            bgImage = UIImage(named: burgerImageName)
        }
        let iconImage = #imageLiteral(resourceName: "hamburger")
        headerView = StickyListHeaderView(frame: CGRect.zero, title: "Available Resturants", backgroundImage: bgImage, iconImage: iconImage)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        headerHeightConstraint = headerView.heightAnchor.constraint(equalToConstant: 150)
        headerHeightConstraint.isActive = true
        let constraints:[NSLayoutConstraint] = [
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
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

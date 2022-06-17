//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Andrey Kapitalov on 16.06.2022.
//

import UIKit

class MainViewController: UITableViewController {

    let restauratntNames = [
        "Kitchen", "KFC", "Macdonalds", "Tokio",
        "Prosto", "Koreana", "Cofe3", "Redrum",
        "Proect", "KillFish", "Slojka", "Komunna",
        "Burger King"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restauratntNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restauratntNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restauratntNames[indexPath.row])
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

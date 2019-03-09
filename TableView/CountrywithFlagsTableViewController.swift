//
//  CountrywithFlagsTableViewController.swift
//  TableView
//
//  Created by MacStudent on 2019-03-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CountrywithFlagsTableViewController: UITableViewController {
    var countryList:[Country]!

    override func viewDidLoad() {
        super.viewDidLoad()
        getIntialCountryList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func getIntialCountryList()
    {
        countryList = []
        countryList.append(Country(cid: "JAP", cname: "Japan", cimage: "Japan" ))
        countryList.append(Country(cid: "UK", cname: "United Kingdom", cimage: "United_Kingdom" ))
        countryList.append(Country(cid: "SS", cname: "South Sudan", cimage: "South_Sudan" ))
        countryList.append(Country(cid: "AMR", cname: "Armenia", cimage: "Armenia" ))
        countryList.append(Country(cid: "AUS", cname: "Australia", cimage: "Australia" ))
        countryList.append(Country(cid: "BNG", cname: "Bangladesh", cimage: "Bangladesh" ))
        countryList.append(Country(cid: "BEl", cname: "Belgium", cimage: "Belgium" ))
        countryList.append(Country(cid: "ISL", cname: "Israel", cimage: "Israel" ))
        countryList.append(Country(cid: "IND", cname: "India", cimage: "india" ))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.countryList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countrycell", for: indexPath)
        
        let country  = self.countryList[indexPath.row]
        cell.textLabel?.text = country.cname
        cell.detailTextLabel?.text = country.cid
        cell.imageView?.image = UIImage(named: country.cimage)
        
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

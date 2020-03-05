//
//  ViewController.swift
//  Day4iOSTableView
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCountry: UITableView!
    
    var countryNames : [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCountry()
    }
    
    func loadCountry(){
        
        countryNames.append(Country(name: "India", capital: "Delhi", flag: #imageLiteral(resourceName: "India")))
        countryNames.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "Afghanistan")))
        countryNames.append(Country(name: "France", capital: "Paris", flag: #imageLiteral(resourceName: "France")))
        
        /*["Afganistan", "Angola", "Aruba", "Canada", "India", "Bahamas", "Ghana", "France", "Nepal", "Kenya", "Bermudas", "Danemark"]    }*/
        
    }
    
}
extension ViewController : UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
    
        let country = countryNames[indexPath.row]
    
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
    
        return cell!
    }
}

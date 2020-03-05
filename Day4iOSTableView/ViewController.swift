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
    
    var countryNames = ["Afganistan", "Angola", "Aruba", "Canada", "India", "Bahamas", "Ghana", "France", "Nepal", "Kenya", "Bermudas", "Danemark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        cell?.textLabel?.text = countryNames[indexPath.row]
        
        return cell!
    }
    
}

//
//  FirstViewController.swift
//  Day05
//
//  Created by Dipuo MAHLAKE on 2018/10/09.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country")
        cell?.textLabel?.text = city.cities[indexPath.row]
        cell?.detailTextLabel?.text = String(city.cities[indexPath.row])
        return cell!
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


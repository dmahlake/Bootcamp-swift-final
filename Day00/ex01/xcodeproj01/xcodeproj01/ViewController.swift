//
//  ViewController.swift
//  xcodeproj01
//
//  Created by Dipuo MAHLAKE on 2018/10/01.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var hello: UILabel!
    
    @IBAction func load(_ sender: Any)
    {
        hello.text = "Hello World !";
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


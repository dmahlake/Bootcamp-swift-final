//
//  ViewController.swift
//  xcodeproj02
//
//  Created by Dipuo MAHLAKE on 2018/10/01.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func num1(_ sender: UIButton)
    {
        label.text = "1"
    }
    
    @IBAction func num2(_ sender: UIButton)
    {
        label.text = "2"
    }
    
    @IBAction func num3(_ sender: UIButton)
    {
        label.text = "3"
    }
    
    @IBAction func acbut(_ sender: UIButton)
    {
        label.text = ""
    }
    
    @IBAction func neg(_ sender: UIButton)
    {
        label.text = "-"
    }
    
    @IBAction func num4(_ sender: UIButton)
    {
        label.text = "4"
    }
    
    @IBAction func num5(_ sender: UIButton)
    {
        label.text = "5"
    }
    
    @IBAction func num6(_ sender: UIButton)
    {
        label.text = "6"
    }
    
    
    @IBAction func adding(_ sender: UIButton)
    {
        label.text = "+"
    }
    
    
    @IBAction func multiply(_ sender: UIButton)
    {
        label.text = "*"
    }
    
    
    @IBAction func num7(_ sender: UIButton)
    {
        label.text = "7"
    }
    
    @IBAction func num8(_ sender: UIButton)
    {
        label.text = "8"
    }
    
    @IBAction func num9(_ sender: UIButton)
    {
        label.text = "9"
    }
    
    @IBAction func sub(_ sender: UIButton)
    {
        label.text = "-"
    }
    
    
    @IBAction func multi(_ sender: UIButton)
    {
        label.text = "/"
    }
    
    @IBAction func num0(_ sender: UIButton)
    {
        label.text = "0"
    }
    
    @IBAction func equal(_ sender: UIButton)
    {
        label.text = "="
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


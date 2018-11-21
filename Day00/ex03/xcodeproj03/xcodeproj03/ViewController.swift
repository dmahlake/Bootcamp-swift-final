//
//  ViewController.swift
//  xcodeproj03
//
//  Created by Dipuo MAHLAKE on 2018/10/01.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var oper  = 0;
    var numberscreen:Double = 0;
    var math = false;
    var prev:Double = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
       if math == true
       {
            label.text = String(sender.tag - 1)
            numberscreen = Double(label.text!)!
            math = false
        }
        else
       {
            label.text = label.text! + String(sender.tag - 1)
            numberscreen = Double(label.text!)!
        }
    }

    @IBAction func buttons(_ sender: UIButton)
    {
       if label.text != "" && sender.tag != 11 && sender.tag != 16
       {
            prev = Double(label.text!)!

            if sender.tag == 12 //Addition
            {
                label.text = "+"
            }
            else if sender.tag == 13  //multiplications
            {
                label.text = "*"
            }
            else if sender.tag == 14 //subtraction
            {
                label.text = "-"
            }
            else if sender.tag == 15 // division
            {
                label.text = "/"
            }
                oper = sender.tag
                math = true;

        }
        else if sender.tag == 16
       {
            if (oper == 12)
            {
                label.text = String(prev + numberscreen)
            }
            else if (oper == 13)
            {
                label.text = String(prev * numberscreen)
            }
            else if (oper == 14)
            {
                label.text = String(prev - numberscreen)
            }
            else if (oper == 15)
            {
                label.text = String(prev / numberscreen)
            }
        }
        else if sender.tag == 11
       {
            label.text = ""
            prev = 0;
            numberscreen = 0;
            oper = 0
        }
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


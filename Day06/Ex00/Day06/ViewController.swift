//
//  ViewController.swift
//  Day06
//
//  Created by Dipuo MAHLAKE on 2018/10/10.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var squareview : UIView!
    var animator : UIDynamicAnimator!
    var gravity : UIGravityBehavior!
    var collision: UICollisionBehavior!
    var itembehavr : UIDynamicItemBehavior!
    @IBOutlet weak var viewDrag : UIView!
    var panGesture = UIPanGestureRecognizer()
    
    
    @IBAction func tab(_ sender: UITapGestureRecognizer)
    {
        let shapeView = myShape(point: sender.location(in: view), maxWidth: self.view.bounds.width, maxHeight: self.view.bounds.height)
        self.view.addSubview(shapeView)
        collision.addItem(shapeView)
        gravity.addItem(shapeView)
        itembehavr.addItem(shapeView)
        
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior(items: [])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        itembehavr = UIDynamicItemBehavior(items: [])
        itembehavr.elasticity = 0.6
        animator.addBehavior(itembehavr)
        
//        panGesture = UIPanGestureRecognizer(target: self, action: #selector(draggedView(_:)))
//        viewDrag.isUserInteractionEnabled = true
//        viewDrag.addGestureRecognizer(panGesture)
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @objc func draggedView(_ sender:UIPanGestureRecognizer)
//    {
//        self.view.bringSubview(toFront: viewDrag)
//        let translation = sender.translation(in: self.view)
//        viewDrag.center = CGPoint(x: viewDrag.center.x + translation.x, y: viewDrag.center.y + translation.y)
//        sender.setTranslation(CGPoint.zero, in: self.view)
//    }

}


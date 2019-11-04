//
//  ViewController.swift
//  Project 24a - Milestone - Extensions
//
//  Created by Sean Williams on 04/11/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var square: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        square.bounceOut(duration: 10)
        
        
        
    }

    

}


extension UIView {
    
    func bounceOut(duration: Double) {
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }) { (result) in

        }
    }
    
}

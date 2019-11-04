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
        
        // bounceOut UIView extension
        square.bounceOut(duration: 10)
        
        
        // Int extension accepting a colure as a parameter and running that many times
        5.times {
            print("ASS")
        }
        
        let driving = { print("Driving") }
        2.times(runClosure: driving)
        
        4.times { print("Print this guinness 4 times") }
        
        
        // Array extension removing first occorance of an element
        let seansLovelyArray = ["sean", "rob", "gregg", "jason", "sean", "rob"]
        print(seansLovelyArray.remove(item: "sean"))
        print(seansLovelyArray.remove(item: "rob"))
        print(seansLovelyArray.remove(item: "jason"))
        
    }

}

extension Array where Element: Comparable {
    
    func remove(item: Element) -> [Element] {
        var array = self
        
        for (index, arrayItem) in array.enumerated() {
            if arrayItem == item {
                array.remove(at: index)
                break
            }
        }
        return array
    }
}


extension Int {
    
    func times(runClosure: () -> Void) {
        for _ in 0..<self {
            runClosure()
        }
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

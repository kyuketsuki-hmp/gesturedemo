//
//  ViewController.swift
//  geasuredemo
//
//  Created by mic-student4 on 7/27/19.
//  Copyright © 2019 MIC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var counter = 0
    
    
    @IBOutlet weak var counterLabbel: UILabel!
    
    @IBAction func tabCount(_ sender: UITapGestureRecognizer) {
        print("tappingg...")
        counter += 1
        updateCounter()
        
        
        
    }
    
    @IBAction func longPressCount(_ sender: UILongPressGestureRecognizer) {
        
        print("long pressing..")
        counter = 0
        updateCounter()
        
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        
        
        counter += 5
        updateCounter()
        
        
    }
    
    
    @IBAction func srightdecr(_ sender: UISwipeGestureRecognizer) {
        
        counter = (counter - 5) < 0 ? 0 : counter - 5
        
        updateCounter()
        
    }
    
    
    
    
    
    
    var oldDegree:CGFloat = 0.0
    
    
    @IBAction func rotateCount(_ sender: UIRotationGestureRecognizer) {
        
        print(sender.rotation * 180.0 / CGFloat(Double.pi))
        
        
        if sender.state == .began {
            oldDegree = 0.0
        }
        
        let newDegree = sender.rotation * 180.0 / CGFloat(Double.pi)
        
        if (newDegree - oldDegree) > 45 {
            
            counter += 10
            oldDegree = newDegree
            updateCounter()
            
        }else if(newDegree - oldDegree) < -45 {
            counter = counter - 10 < 0 ? 0 : counter - 10
            oldDegree = newDegree
            updateCounter()
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func updateCounter(){
        counterLabbel.text = String(counter)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


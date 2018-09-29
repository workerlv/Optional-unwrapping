//
//  ViewController.swift
//  Optionals
//
//  Created by Arturs Vitins on 29/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

struct Device {
    var type: String
    var price: Float
    var color: String
    
}

class ViewController: UIViewController {

    var optionalNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        optionalNumber = 2
        
        ifLetEx()
        
        guardEx(number: optionalNumber)
        
        
        // optional chaining example
        var phone: Device?
        phone = Device(type: "Phone", price: 100, color: "Black")
        
        let devicePrice = phone?.price
        
        if let devicePrice = devicePrice {
            print("Total price = \(devicePrice + 10)")
        }
        
        
    }
    
    func ifLetEx () {
        
        
        if let number = optionalNumber {
            print("optionalNumber = \(number)")
        } else {
            print("optionalNumber = nil")
        }
        
    }

    
    func guardEx (number: Int?) {
        
        guard let tempNumber = number else {
            print("No value - exiting func")
            return
        }
        
        print("Got number = \(tempNumber)")
        
    }

    
}

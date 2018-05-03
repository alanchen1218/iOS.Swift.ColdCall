//
//  ViewController.swift
//  ColdCall
//
//  Created by Alan Chen on 5/2/18.
//  Copyright © 2018 Alan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var randNumber: UILabel!
    
    
    let names = ["Alan","Anne", "Sophie","Anne Sophie", "Aaron", "Andy", "Winton", "Alex", "Jonathan", "Darren", "Lorenzo", "Jacky", "Kyle", "Samson", "Victor", "Vincent", "Sophia", "Janet", "Jessica"]
    var current = 0
    
    @IBAction func callCooldButton(_ sender: UIButton) {
        current = Int(arc4random_uniform(UInt32(names.count-1)))
        if current < names.count-1
        {
            current += 1
        }
        else {
            current = 0
        }
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = names[current]
        let randomnumber = Int(arc4random_uniform(UInt32(5)+1))
        if randomnumber == 1 || randomnumber == 2 {
            randNumber.textColor = UIColor.red
            randNumber.text = String(randomnumber)
        }
        else if randomnumber == 3 || randomnumber == 4 {
            randNumber.textColor = UIColor.blue
            randNumber.text = String(randomnumber)
        }
        else if randomnumber == 5 {
            randNumber.textColor = UIColor.green
            randNumber.text = String(randomnumber)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 30
        button.clipsToBounds = true

    }
    

}


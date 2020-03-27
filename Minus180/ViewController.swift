//
//  ViewController.swift
//  Minus180
//
//  Created by Pascal Barth on 27.03.20.
//  Copyright © 2020 zocraOS. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    var allPossibleNumbers = [Int]()
    let allPossibleCheckouts = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateAllPossibleNumbers()
    }
    
    func calculateAllPossibleNumbers() {
        //MARK: Calculate all possible numbers a player can throw in a regular match of darts at the beginning of the match, depending on the player-chosen matchmode
        
        //alle zahlen von 0 bis 20 einfügen
        for i in 0..<21 {
            print(i)
            allPossibleNumbers.append(i)
        }

        
     /*   for score in 1...180 {
            if score >= 161 {
                if score % 3 == 0 {
                    allPossibleNumbers.append(score)
                }
            } else if score % 3 == 0 && score-50 <= 120 {
                allPossibleNumbers.append(score)
        }
    }*/
        print("Array: \(allPossibleNumbers)")

}
}


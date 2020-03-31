//
//  ViewController.swift
//  Minus180
//
//  Created by Pascal Barth on 27.03.20.
//  Copyright © 2020 zocraOS. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    var singleDartPossibleValues = [Int]()
    // var lastIteratedItem = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getInitialValues()
        
    }
    
    func getThrowValue() {
        
    }
    
    func getInitialValues() {
        //MARK: store all values possible with only one dart thrown at the baord
        //Single Sectors
        for i in 0..<21 {
            
            singleDartPossibleValues.append(i)
            singleDartPossibleValues.append(i*2)
            singleDartPossibleValues.append(i*3)
            //MARK: Bull nicht vergessen!! Erst nach entfernen aller doppelten einfügen!
            // singleDartPossibleValues.insert(25, at: i-1) // an i-1 einfügen, wenn i größer gleich 25
            //singleDartPossibleValues.insert(50, at: i-1) // an i-1 einfügen, wenn i größer gleich 50
        }
        
        singleDartPossibleValues = singleDartPossibleValues.removeDuplicatesFromArray()
        singleDartPossibleValues.sort()
        print(singleDartPossibleValues)
    }
    
   
}

//MARK: Extension to get all unique Values in an array
extension Sequence where Iterator.Element: Hashable {
    func removeDuplicatesFromArray() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter { seen.insert($0).inserted }
    }
}

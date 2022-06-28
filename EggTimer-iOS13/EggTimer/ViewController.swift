//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    @IBAction func HardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        switch hardness {
        case "Soft":
            print(softTime)
        case "Medium":
            print(mediumTime)
        case "Hard":
            print(hardTime)
        default:
            print("오류발생!")
        }
    }
    
    //Don't change this
    var aYear =  1200

    func isLeap(year: Int) {
        if year%4 == 0 && year%100 != 0 {
          print("YES")
      } else if year%4 == 0 && year&100 == 0 && year%400 == 0 {
          print("YES")
      } else {
          print("NO")
      }
    }
    
}

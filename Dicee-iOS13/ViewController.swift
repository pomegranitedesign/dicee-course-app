//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var diceOne: UIImageView!
  @IBOutlet weak var diceTwo: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func getRandom(low: Int, high: Int) -> Int {
    return Int.random(in: low...high)
  }
  
  @IBAction func rollPressed(_ sender: UIButton) {
    let dices = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    diceOne.image = dices[getRandom(low: 0, high: 5)]
    diceTwo.image = dices[getRandom(low: 0, high: 5)]
  }
}

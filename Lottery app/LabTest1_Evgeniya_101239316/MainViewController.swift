//
//  ViewController.swift
//  LabTest1_Evgeniya_101239316
//
//  Created by Tech on 2021-02-09.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var num1:Int = 0{
        didSet{
            txt1.text = "\(num1)"
        }
    }
    
    var num2:Int = 0{
        didSet{
            txt2.text = "\(num2)"
        }
    }
    
    var num3:Int = 0{
        didSet{
            txt3.text = "\(num3)"
        }
    }
    
    var num4:Int = 0{
        didSet{
            txt4.text = "\(num4)"
        }
    }
    
    var num5:Int = 0{
        didSet{
            txt5.text = "\(num5)"
        }
    }
    
    var num6:Int = 0{
        didSet{
            txt6.text = "\(num6)"
        }
    }
    
    @IBAction func DrawOnClick(_ sender: Any) {
        
        num1 = randomNum()
        
        repeat{
            num2 = randomNum()
        } while(num2 == num1)
        
        repeat{
            num3 = randomNum()
        } while(num3 == num1 || num3 == num2)
        
        repeat{
            num4 = randomNum()
        } while(num4 == num1 || num4 == num2 || num4 == num3)
        
        repeat{
            num5 = randomNum()
        }
            while(num5 == num1 || num5 == num2 || num5 == num3 || num5 == num4)
        
        repeat{
            num6 = randomNum()
        }
            while(num6 == num1 || num6 == num2 || num6 == num3 || num6 == num4 || num6 == num5)
    }
    
    @IBAction func ResetOnClick(_ sender: Any) {
        txt1.text = "-"
        txt2.text = "-"
        txt3.text = "-"
        txt4.text = "-"
        txt5.text = "-"
        txt6.text = "-"
    }
    
    @IBOutlet var txt1: UILabel!
    
    @IBOutlet var txt2: UILabel!
    
    @IBOutlet var txt3: UILabel!
    
    @IBOutlet var txt4: UILabel!
    
    @IBOutlet var txt5: UILabel!
    
    @IBOutlet var txt6: UILabel!
    
    func randomInt(max: Int) -> Int {
        let rand: Int = Int(arc4random())
        return (rand % max) + 1
    }
    func randomNum() -> Int {
        let max: Int = 65
        let random = randomInt(max: max)
        return random
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

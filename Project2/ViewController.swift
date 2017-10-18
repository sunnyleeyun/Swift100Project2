//
//  ViewController.swift
//  Project2
//
//  Created by Mac on 2017/10/18.
//  Copyright © 2017年 Sunny, Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet var longPress_Outlet: UILongPressGestureRecognizer!
  
  @IBAction func longPress_Button_Tapped(_ sender: Any) {
    print("long press")
    num += 1
    number.text = String(num)
  }
  
  var num: Int = 0
  @IBOutlet weak var number: UILabel!
  @IBOutlet weak var TaporHold_Outlet: UIButton!
  @IBAction func Reset_Button_Tapped(_ sender: Any) {
    num = 0
    number.text = String(num)
  }
  @IBAction func TaporHold_Button_Tapped(_ sender: Any) {
    num += 1
    number.text = String(num)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationController?.navigationBar.shadowImage = UIImage()
    
    number.text = String(num)
    
    TaporHold_Outlet.addGestureRecognizer(longPress_Outlet)
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


//
//  ViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 14/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var sliderLbl: UILabel!
    
    @IBAction func myBtnPressed(_ sender: Any) {
        myLabel.textColor = UIColor.black
        myLabel.backgroundColor = UIColor.systemOrange
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.font = UIFont.systemFont(ofSize: 26)
        myLabel.text = "Hello iOS Team"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myBtn.backgroundColor = UIColor.systemGray
        myBtn.setTitleColor(UIColor.white, for: UIControl.State.normal)
        myBtn.setTitle("Hit Me!", for: UIControl.State.normal)
        
    }

    @IBAction func sliderUpdate(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLbl.text = "\(currentValue)"
    }
    
}


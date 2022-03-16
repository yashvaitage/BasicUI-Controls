//
//  SwitchViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 11/03/22.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var resLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if mySwitch.isOn{
            view.backgroundColor = .systemOrange
            resLabel.text = "The color is Orange"
        }else{
            view.backgroundColor = .systemYellow
            resLabel.text = "The color is Yellow"
        }
    }
    
}

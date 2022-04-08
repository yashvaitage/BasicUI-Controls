//
//  SwitchViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 11/03/22.
//

import UIKit

class SwitchViewController: UIViewController {
    
//=====================Outlets=======================
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var resLabel: UILabel!

//==================Properties==============
//    var btn1 = false
//    var btn0 = false
    
//==================View LifeCycle Methods==============
    override func viewDidLoad() {
        super.viewDidLoad()
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemOrange
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.title = "Switch UI"
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        
    }

//======================User Define Methods=================
    
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if mySwitch.isOn{
            view.backgroundColor = .systemRed
            resLabel.text = "The color is Red"
            
            
        }else{
            view.backgroundColor = .systemYellow
            resLabel.text = "The color is Yellow"
        }
    }
    
}

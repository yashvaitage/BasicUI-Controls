//
//  SwitchViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 11/03/22.
//

import UIKit

@available(iOS 13.0, *)
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
        if #available(iOS 13.0, *) {
            let barAppearance = UINavigationBarAppearance()
            
            barAppearance.backgroundColor = .systemOrange
            barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            navigationItem.title = "Slider"
            navigationItem.standardAppearance = barAppearance
            navigationItem.scrollEdgeAppearance = barAppearance
        } else {
            // Fallback on earlier versions
        }
        
        
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

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
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemOrange
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.title = "Switch UI"
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance

        
    }
    
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

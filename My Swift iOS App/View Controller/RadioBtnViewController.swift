//
//  RadioBtnViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 08/04/22.
//

import UIKit

class RadioBtnViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate{
    
    
    //=======================Outlets===================
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var confirmBtn: UIButton!
    
    //===================Properties==================
    var arr = ["English", "Marathi"]
    var img = ["check","uncheck"]
    var selectedRow: Int?{
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    //===================View Life Cycle Methods================
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tabBarController?.tabBar.isHidden = true
        
        confirmBtn.layer.cornerRadius = 20
    }
    
    
    
    //===========================User Define Methods================================
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RadioBtnTableViewCell // Create Instance For Cell
        cell?.radioBtnLbl.text = self.arr[indexPath.row]

         if (self.selectedRow == nil){
            let alert = UIAlertController(title: "Alert", message: "Please Choose Any One Language", preferredStyle: UIAlertController.Style.alert)//Create the alert
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)) //add the action
            self.present(alert, animated: true, completion: nil) //show the alert
        }   else if(self.selectedRow == indexPath.row){
            cell?.radioBtnImg.image = UIImage(named: "check")
        }
        else{
            cell?.radioBtnImg.image = UIImage(named: "uncheck")
        }
        cell?.selectionStyle = .none
        return cell!
    }
    
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedRow = indexPath.row
    //some code
    }
}

//  CheckBoxViewController.swift
//  My Swift iOS App
//  Created by Admin on 12/04/22.

import UIKit

class CheckBoxViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    //====================Outlet====================
    @IBOutlet weak var tableView: UITableView!
    
    //====================Properties====================
    
    var myArr = ["MAC","Linux","Android","Windows","Solaris"]
    
    //====================View Lifecycle Methods====================
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

    }
    
    //====================Methods====================
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "checkCell", for: indexPath) as? CheckBoxTableViewCell
        cell!.Cimg.image = UIImage(named: "check")
        cell!.Clbl.text = myArr[indexPath.row]
        cell?.selectionStyle = .none
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
//    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71.0
    }

}

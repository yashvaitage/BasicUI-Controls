//
//  TableViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 17/03/22.

import UIKit

@available(iOS 13.0, *)
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var books = [Book]()
    var pullControl = UIRefreshControl()
    var bookArr = ["Python", "JavaScript", "Swift"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Pull To Refresh */
        pullControl.attributedTitle = NSAttributedString(string: "Pull To Refresh")
        
        pullControl.addTarget(self, action: #selector(refreshListData(_:)), for: .valueChanged)
        
        self.tableView.refreshControl = pullControl
        
        /* Navigation Bar Appearance */
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
        
        if #available(iOS 15.0, *){
            self.tableView.sectionHeaderTopPadding = 0
        }
        getBookListAPI()
    }
    
    func getBookListAPI(){
        let session = URLSession.shared
        let apiURL = URL(string: "https://cocoacasts.s3.us-west-1.amazonaws.com/15eb4a8ed546df91dd5c1c50cd6250da01503242/books.json")!
        //        var request = URLRequest(url: apiURL)
        //        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let task = session.dataTask(with: apiURL) { data, response, error in print(response as Any)
            if error != nil {
                print("Error: ", error?.localizedDescription as Any)
                return
            }
            do {
                let json = try JSONDecoder().decode([Book].self, from: data!)
                print(json)
                self.books = json
                print(self.books.count)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            catch {
                print("Error while JSON Seralization")
            }
        }
        task.resume()
    }
    
    @objc func refreshListData(_ sender: Any){
        self.pullControl.endRefreshing()
        getBookListAPI() //API Call Here
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.books.count // Dynamically Count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ApiTableViewCell // Create Instance For Cell
        cell?.ApiLbl.text = self.books[indexPath.row].title
        cell?.authorLbl.text = self.books[indexPath.row].author
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    /* Swipe To Delete */
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete
        {
            tableView.beginUpdates()
            self.books.remove(at: indexPath.row).title
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
}

//
//  TableViewController.swift
//  My Swift iOS App
//
//  Created by Admin on 17/03/22.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    var books = [Book]()
    var pullControl = UIRefreshControl()
    var bookArr = ["Python", "JavaScript", "Swift"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pullControl.attributedTitle = NSAttributedString(string: "Pull To Refresh")
        
        pullControl.addTarget(self, action: #selector(refreshListData(_:)), for: .valueChanged)
        
        self.tableView.refreshControl = pullControl
        
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemOrange
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        navigationItem.title = "API Call"
        
        if #available(iOS 15.0, *){
            self.tableView.sectionHeaderTopPadding = 0
        }
        getBookListAPI()
    }
    
    func getBookListAPI(){
        let session = URLSession.shared
        let apiURL = URL(string: "https://cocoacasts.s3.us-west-1.amazonaws.com/15eb4a8ed546df91dd5c1c50cd6250da01503242/books.json")!
        let task = session.dataTask(with: apiURL) { data, response, error in print(response)
            if error != nil {
                print("Error: ", error)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ApiTableViewCell
        cell?.ApiLbl.text = self.books[indexPath.row].title
        return cell!
    }
    
}

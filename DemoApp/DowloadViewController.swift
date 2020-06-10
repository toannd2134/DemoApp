//
//  DowloadViewController.swift
//  DemoApp
//
//  Created by Toan on 6/10/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class DowloadViewController: UIViewController {
    
    let user = DowloadUser()
   
    @IBOutlet weak var dowload: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dowload.delegate = self
        self.dowload.dataSource = self
        self.dowload.register(UINib(nibName: "DowloadTableViewCell", bundle: nil), forCellReuseIdentifier: "Dowloadcell")
        
        
    }
   

  

}
extension DowloadViewController : UITableViewDelegate  , UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Dowloadcell") as! DowloadTableViewCell
        cell.Dowloadimage.image  = user[indexPath.row].image
        cell.nameDowload.text = user[indexPath.row].name
        cell.noteDowload.text = user[indexPath.row].note
        cell.ttimeDowload.text  = user[indexPath.row].time
        return cell
        
    }
    
    
}

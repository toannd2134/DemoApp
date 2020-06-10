
//
//  PodcastViewController.swift
//  DemoApp
//
//  Created by Toan on 6/8/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class PodcastViewController: UIViewController {
 let User = PodUser()
    let User2 = PodUser2()
   lazy var curientSegment = User
    @IBOutlet weak var subcrice: UIButton!
    @IBOutlet weak var podtable: UITableView!
    @IBOutlet weak var Segmment: UISegmentedControl!
    @IBOutlet weak var headView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        podtable.delegate = self
        podtable.dataSource = self
        podtable.register(UINib(nibName: "podcastTableViewCell", bundle:  nil), forCellReuseIdentifier: "podcell")
        self.headView.backgroundColor = UIColor(red: 0.99, green: 0.86, blue: 0.69, alpha: 1.00)
        podtable.tableFooterView = UIView()
        subcrice.backgroundColor = UIColor.backgroundColor()
        subcrice.tintColor = .white
        subcrice.layer.cornerRadius = 10
    }

    @IBAction func segmentAction(_ sender: Any) {
        switch Segmment.selectedSegmentIndex {
        case 0:
            curientSegment = User
            podtable.reloadData()
        default:
            curientSegment = User2
            podtable.reloadData()
        }
    
    }
}
extension PodcastViewController : UITableViewDelegate ,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(70)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return curientSegment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcell", for: indexPath) as! podcastTableViewCell
        cell.name.text = curientSegment[indexPath.row].name
        cell.datPodcast.text = curientSegment[indexPath.row].Date
        cell.timePodcast.text = curientSegment[indexPath.row].time
        return cell
    }
    
    
}

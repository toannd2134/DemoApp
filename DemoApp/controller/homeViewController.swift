//
//  homeViewController.swift
//  DemoApp
//
//  Created by Toan on 6/7/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
import Stevia
class homeViewController: UIViewController {
    
    var path : UIBezierPath!
    @IBOutlet weak var bottomColectionView: UICollectionView!
    @IBOutlet weak var midcolectionView: UICollectionView!
    @IBOutlet weak var topColection: UICollectionView!
    var user = creatData()
    var user1 = creatData1()
    let topLable : UILabel = {
        let label = UILabel()
        label.text = "Explore"
        label.textColor = .white
         label.font = UIFont(name: "Athelas", size: 18)
        return label
    }()
    let  BottomLable : UILabel = {
           let label = UILabel()
           label.text = "Base on your interests"
        label.textColor = .white
        label.font = UIFont(name: "Athelas", size: 14)
           return label
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        makeView()
        bottomColectionView.backgroundColor = .white
        topColection.delegate = self
        topColection.dataSource = self
        topColection.register(UINib(nibName: "topCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "topcell")
        topColection.showsHorizontalScrollIndicator = false
        midcolectionView.delegate = self
        midcolectionView.dataSource  = self
        midcolectionView.showsHorizontalScrollIndicator = false
        midcolectionView.register(UINib(nibName: "midCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "midcell")
        bottomColectionView.delegate = self
        bottomColectionView.dataSource = self
        bottomColectionView.showsVerticalScrollIndicator = false
        bottomColectionView.register(UINib(nibName: "bottomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "bottomcell")
        
        path.fill()
        view.bringSubviewToFront(topColection)
        view.sv([topLable,BottomLable])
        layout()
    }
    func layout() {
        view.layout(
            50,
            |-20-topLable-200-| ~ 30,
            |-20-BottomLable-200-| ~ 30
    )
    }
    func makeView(){
         path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 170))
        path.addLine(to: CGPoint(x: 170, y: 250))
        path.addLine(to: CGPoint(x: view.frame.maxX , y: 170))
        path.addLine(to: CGPoint(x: view.frame.maxX, y: 0))
  let ShapeLayer = CAShapeLayer()
        ShapeLayer.fillColor = UIColor.backgroundColor().cgColor
        ShapeLayer.path = path.cgPath
        view.layer.addSublayer(ShapeLayer)
    }
    
}
extension homeViewController : UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topColection{
        return user.count
        }else if collectionView == midcolectionView {
            return user1.count
        }else{
            return user1.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == topColection{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topcell", for: indexPath) as! topCollectionViewCell
        cell.bacgroundImg.image = user[indexPath.row].bacground
        cell.logoImg.image = user[indexPath.row].avatar
        cell.topLabel.text = user[indexPath.row].topTitle
        cell.namelabel.text = user[indexPath.row].name
        return cell
        }else if collectionView == midcolectionView {
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "midcell", for: indexPath)  as!
            midCollectionViewCell
            cell.avataimg.image = user1[indexPath.row].avatar
            cell.namelabel.text = user1[indexPath.row].name
            cell.notlabel.text = user1[indexPath.row].note
            return cell
            
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomcell", for: indexPath) as! bottomCollectionViewCell
            cell.avatar.image = user1[indexPath.row].avatar
            cell.name.text = user1[indexPath.row].name
            cell.note.text = user1[indexPath.row].note
            return cell
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let width = UIScreen.main.bounds.width
        if collectionView == topColection{
        
            return CGSize(width: width-50, height: topColection.frame.height)
    
        }else if collectionView == midcolectionView{
            return CGSize(width: 160  , height: collectionView.frame.height)
        }else{
            return CGSize(width: bottomColectionView.frame.width - 30 , height: 110)
        }
    }
    
}

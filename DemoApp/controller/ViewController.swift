//
//  ViewController.swift
//  DemoApp
//
//  Created by Toan on 6/5/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  creatdata = [customScroll]()
    let  screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var timer = Timer()
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var page: UIPageControl!
   
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet var buttonOutlet: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
       setData()
        scroll.delegate = self
        setupScroll(creatdata)
        page.numberOfPages = creatdata.count
        page.currentPage = 0
        page.pageIndicatorTintColor = .red
        page.currentPageIndicatorTintColor =  .gray
        scroll.showsHorizontalScrollIndicator = false
        for i in buttonOutlet {
            i.layer.cornerRadius = 40
        }
        
        signupButton.layer.cornerRadius = 10
        signupButton.setTitle("Sign Up", for: .normal)
        signupButton.setTitleColor(UIColor.backgroundColor(), for: .normal)
        self.view.backgroundColor = UIColor(red : 1.00 ,green : 0.18 , blue : 0.33 ,alpha: 1.00)
    }
    func setData(){
        let data = Bundle.main.loadNibNamed("customScroll", owner: self, options: nil)?.first as! customScroll
        data.toplabel.text = "Episode seach"
        data.bottomLabel.text = "Trying to find your favorite guest  on that one amazing episode?  Episode search to the rescue!"
        let data1 = Bundle.main.loadNibNamed("customScroll", owner: self, options: nil)?.first as! customScroll
        data1.toplabel.text = "Play without subscribing"
        data1.bottomLabel.text = "Browse podcasts and hit play  on episodes that look interesting, no strings attached."
        let data2 = Bundle.main.loadNibNamed("customScroll", owner: self, options: nil)?.first as! customScroll
        data2.toplabel.text = "Up next syncing"
        data2.bottomLabel.text = "How about the tablet sitting  on your coffee table?  Pod Pro has you covered."
        let data3 = Bundle.main.loadNibNamed("customScroll", owner: self, options: nil)?.first as! customScroll
        data3.toplabel.text = "improved discovery"
        data3.bottomLabel.text = "Our best algorithms teamed up  with our best people to bring you  the best podcasts."
        
        creatdata.append(contentsOf: [data,data1,data2,data3])
    }
    func setupScroll(_ arrs : [customScroll]){
        for (index , item ) in arrs.enumerated(){
            item.frame = CGRect(x:  CGFloat(index)*screenWidth , y: 0, width: screenWidth  , height: screenHeight )
            scroll.addSubview(item)
        }
        scroll.contentSize = CGSize(width: screenWidth*CGFloat(arrs.count), height: screenHeight*CGFloat(0.6))
        scroll.isPagingEnabled = true
        
        
      
    }
 
    @IBAction func SignUpAction(_ sender: Any) {
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "signUP")
        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        
    }
   
}
extension ViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let indexpage = round(scrollView.contentOffset.x/screenWidth)
        page.currentPage = Int(indexpage)
    }
}



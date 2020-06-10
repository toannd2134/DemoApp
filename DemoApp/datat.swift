//
//  datat.swift
//  DemoApp
//
//  Created by Toan on 6/7/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit
struct data{
    var bacground : UIImage!
    var topTitle :String
    var avatar : UIImage!
    var name : String
    init(bacground : UIImage!,topTitle :String,avatar : UIImage!, name : String) {
        self.avatar = avatar
        self.bacground = bacground
        self.topTitle = topTitle
        self.name = name
    }
}
func creatData() ->[data]{
    let data1 = data(bacground: UIImage(named: "png1") ,topTitle: "Play without subscribing", avatar: UIImage(named: "selfe"), name: "Davide Galizzi")
   let data2 = data(bacground: UIImage(named: "png1")!, topTitle: "Play without subscribing", avatar: UIImage(named: "selfe")!, name:  "Davide Galizzi")
    return [data1,data2]
}
struct midColectionData{
    var avatar : UIImage!
    var name :String
    var note :String
    init(avatar : UIImage!, name :String,note :String) {
        self.avatar = avatar
        self.name = name
        self.note = note
    }
}
func creatData1() -> [midColectionData]{
let data = midColectionData(avatar: UIImage(named: "music1"), name: "To Live and Die", note: "Tenderfoot Tv & cadence")
let data1 = midColectionData(avatar: UIImage(named: "music2")!, name: "Public Ofical A", note: "WBEZ chicago")
let data2 = midColectionData(avatar: UIImage(named: "music3")!, name: "the Dropout", note: "ABC News")
    return [data,data1,data2]
}
struct PodData {
    var name : String
    var Date : String
    var time : String
    init(name : String,Date : String,time : String) {
        self.name = name
        self.Date = Date
        self.time = time
    }
}
func PodUser() -> [PodData]{
    let user1 = PodData(name: "S2 E1 -The NBA Soap Opera", Date: "March 14", time: "26min")
     let user2 = PodData(name: "S1 E7 - Power of Two", Date: "March 7", time: "31min")
     let user3 = PodData(name: "S1 E6 - The Long and Winding Road", Date: "March 5", time: "25min")
     let user4 = PodData(name: "S1 E5 - The Breakup", Date: "February", time: "25min")
     let user5 = PodData(name: "S1 E4 - Fussing and Fighting", Date: "Febuary 26", time: "26min")
      let user6 = PodData(name: "S1 E3  - Help Me if You Can", Date: "Febuary 21", time: "21min")
    return [user1,user2,user3,user4,user5,user6]
    
}
func PodUser2() -> [PodData]{
    let user1 = PodData(name: "S1 E7 - Power of Two", Date: "March 14", time: "26min")
     let user2 = PodData(name: "S1 E7 - Power of Two", Date: "March 7", time: "31min")
     let user3 = PodData(name: "S1 E6 - The Long and Winding Road", Date: "March 5", time: "25min")
     let user4 = PodData(name: "S1 E5 - The Breakup", Date: "February", time: "25min")
     let user5 = PodData(name: "S1 E4 - Fussing and Fighting", Date: "Febuary 26", time: "26min")
      let user6 = PodData(name: "S1 E5 - The Breakup", Date: "Febuary 21", time: "21min")
    return [user1,user2,user3,user4,user5,user6]
    
}
struct DowloadData {
   var name : String
   var image: UIImage
   var note : String
    var time : String
    init(name : String,image: UIImage,note : String,time : String) {
        self.image = image
        self.time = time
        self.name = name
        self.note = note
    }
}
func DowloadUser() -> [DowloadData]{
    let dowload1 = DowloadData(name: "The Drop Out", image: UIImage(named: "png")!, note: "ABC News", time: "41s")
    let dowload2 = DowloadData(name: "Should This Exist", image: UIImage(named: "png1-1")!, note: "WaitWhat", time: "39min")
    let dowload3 = DowloadData(name: "To Live and Die in LA", image: UIImage(named: "music3")!, note: "tenderfoot TV & cadence 13", time: "29min")
    let dowload4 = DowloadData(name: "ThroughtLine", image: UIImage(named: "anh1")!, note: "NPR", time: "45min")
    let dowload5 = DowloadData(name: "The Top Off", image: UIImage(named: "anh2")!, note: "The Tip Off", time: "35s")
    let dowload6 = DowloadData(name: "Public Offical", image:  UIImage(named: "music2")!, note: "WBEZ chicago ", time: "25 min")
    let dowload7 = DowloadData(name: "The joe Rogan Experience", image: UIImage(named: "anh")!, note: "Joe Rogan", time: "15 min")
    return [dowload1,dowload2,dowload3,dowload4,dowload5,dowload6,dowload7]
}

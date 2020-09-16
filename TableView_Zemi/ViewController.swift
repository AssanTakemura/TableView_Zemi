//
//  ViewController.swift
//  TableView_Zemi
//
//  Created by yanagimachi_riku on 2020/08/26.
//  Copyright © 2020 Riku_Yanagimachi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let memberNameArray: [String] = ["のび太", "ドラえもん", "ジャイアン", "しずか", "スネ夫"]
    
    let memberGradeArray: [Int] = [5, 100, 4, 6, 3]
    
    let memberHobbyArray: [String] = ["野球", "どら焼きを食す", "カラオケ", "おしゃべり", "ジャイアンのひっつき虫"]
    
    let membersPhotoArray: [String] = ["nobita.jpg", "doraemon.jpg", "takeshi.jpg", "shizuka.jpg", "suneo.jpg"]
    
    //        = ["nobita.jpg", doraemon.jpg, takeshi.jpg, shizuka.jpg, suneo.jpg]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 100
        
        tableView.tableFooterView = UIView()
        
        let nib = UINib(nibName: "IntroduceTableViewCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memberNameArray.count
        //        return memberGradeArray.count
        //        return memberHobbyArray.count
        //        return membersPhotoArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! IntroduceTableViewCell
        cell.memberNameLabel.text = memberNameArray[indexPath.row]
        cell.memberGradeLabel.text = String(memberGradeArray[indexPath.row])
        cell.memberHobbyLabel.text = memberHobbyArray[indexPath.row]
        cell.membersPhoto.image = UIImage(named: membersPhotoArray[indexPath.row])
        return cell
    }
    
    
    
    
}


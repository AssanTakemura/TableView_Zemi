//
//  IntroduceTableViewCell.swift
//  TableViewDojo
//
//  Created by yanagimachi_riku on 2020/08/26.
//  Copyright © 2020 Riku_Yanagimachi. All rights reserved.
//

import UIKit

class IntroduceTableViewCell: UITableViewCell {

  
    @IBOutlet var memberNameLabel: UILabel!
    @IBOutlet var memberGradeLabel: UILabel!
    @IBOutlet var memberHobbyLabel: UILabel!
    @IBOutlet var membersPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

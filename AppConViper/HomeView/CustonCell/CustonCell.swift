//
//  CustonCell.swift
//  AppConViper
//
//  Created by Daniel Illana Bargueño on 02/06/2020.
//  Copyright © 2020 Daniel Illana Bargueño. All rights reserved.
//

import UIKit

class CustonCell: UITableViewCell {

    @IBOutlet weak var imageMovie: UIImageView!
    
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var sipnosisLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

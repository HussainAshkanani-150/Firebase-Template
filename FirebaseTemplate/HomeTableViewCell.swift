//
//  HomeTableViewCell.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/13/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photographerImage: UIImageView!
    @IBOutlet weak var photographerName: UILabel!
    @IBOutlet weak var photographerJob: UILabel!
    @IBOutlet weak var photographerRating: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

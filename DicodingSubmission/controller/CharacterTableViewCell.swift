//
//  CharacterTableViewCell.swift
//  DicodingSubmission
//
//  Created by Devis Evianus on 17/07/20.
//  Copyright © 2020 example. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var photoCharacter: UIImageView!
    @IBOutlet weak var nameCharacter: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

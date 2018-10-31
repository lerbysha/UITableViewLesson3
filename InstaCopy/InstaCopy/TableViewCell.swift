//
//  TableViewCell.swift
//  InstaCopy
//
//  Created by Ильдар Давлетьяров on 30/09/2018.
//  Copyright © 2018 FirstGroupCompany. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nickLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configurecell(with model: Person) {
        likeCountLabel.text = model.likeCount
        nickLabel.text = model.nick
        statusLabel.text = model.status
    }
}

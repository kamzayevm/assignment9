//
//  bookCell.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//

import UIKit

class bookCell: UITableViewCell{
    
    @IBOutlet weak var booksImage: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        
    }
}

//
//  musicCell.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//
import UIKit

class musicCell: UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var musicImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        
    }
}

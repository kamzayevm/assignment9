//
//  DetailMusicViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев on 12.11.2024.
//
import UIKit

class DetailMusicViewController: UIViewController {
    
    @IBOutlet weak var genreText: UILabel!
    @IBOutlet weak var musicText: UILabel!
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var genre: String = ""
    var descriptionText: String = ""
    var author: String = ""
    var image: String = ""
    var titleText: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        genreText.text = genre
        musicText.text = descriptionText
        authorLabel.text = author
        titleLabel.text = titleText
        musicImage.image = UIImage(named: image)
    }
}

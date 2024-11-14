//
//  DetailBookViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//
import UIKit

class DetailBookViewController: UIViewController {
    
    @IBOutlet weak var genreText: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    
    var genre: String = ""
    var descriptionText: String = ""
    var author: String = ""
    var image: String = ""
    var titleText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreText.text = genre
        descriptionLabel.text = descriptionText
        authorLabel.text = author
        titleLabel.text = titleText
        bookImage.image = UIImage(named: image)
    }
}

//
//  DetailFilmViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//
import UIKit

class DetailFilmViewController: UIViewController {
    
    @IBOutlet weak var genreText: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var genre: String = ""
    var descriptionText: String = ""
    var rating: Double = 0.0
    var image: String = ""
    var titleText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        genreText.text = genre
        descriptionLabel.text = descriptionText
        authorLabel.text = "Рейтинг: \(rating)"
        titleLabel.text = titleText
        filmImage.image = UIImage(named: image)
    }
}

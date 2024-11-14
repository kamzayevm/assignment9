//
//  FilmsViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//
import UIKit

class FilmsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let films = Data().favoritsFilms
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension FilmsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmsCell") as! filmsCell
        cell.titleLabel.text = films[indexPath.row].title
        cell.filmsImage.image = UIImage(named: films[indexPath.row].image)
        cell.ratingLabel.text = "Рейтинг: \(films[indexPath.row].rating)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "detailFilm") as! DetailFilmViewController
        
        let selectedFilms = films[indexPath.row]
        vc.titleText = selectedFilms.title
        vc.image = selectedFilms.image
        vc.rating = selectedFilms.rating
        vc.descriptionText = selectedFilms.description
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

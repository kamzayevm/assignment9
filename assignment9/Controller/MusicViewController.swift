//
//  ViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//

import UIKit

class MusicViewController: UIViewController {

    let music = Data().musicList
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension MusicViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell") as! musicCell
        cell.titleLabel.text = music[indexPath.row].name
        cell.musicImage.image = UIImage(named: music[indexPath.row].image)
        cell.authorLabel.text = music[indexPath.row].author
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "detailMusic") as! DetailMusicViewController
        
        let selectedMusic = music[indexPath.row]
        vc.titleText = selectedMusic.name
        vc.image = selectedMusic.image
        vc.author = selectedMusic.author
        vc.genre = selectedMusic.genre
        vc.descriptionText = selectedMusic.text
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

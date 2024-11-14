//
//  BooksViewController.swift
//  assignment9
//
//  Created by Мубарак Камзаев  on 12.11.2024.
//
import UIKit

class BooksViewController: UIViewController {

    let books = Data().bookList
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}
extension BooksViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as! bookCell
        cell.titleLabel.text = books[indexPath.row].name
        cell.booksImage.image = UIImage(named: books[indexPath.row].image)
        cell.authorLabel.text = books[indexPath.row].author
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "detailBook") as! DetailBookViewController
        
        let selectedBook = books[indexPath.row]
        vc.titleText = selectedBook.name
        vc.image = selectedBook.image
        vc.author = selectedBook.author
        vc.genre = selectedBook.genre
        vc.descriptionText = selectedBook.descriprion
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

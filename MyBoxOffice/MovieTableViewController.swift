//
//  ViewController.swift
//  MyBoxOffice
//
//  Created by Jinyoung Kim on 2021/03/08.
//

import UIKit

class MovieTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
    }
}

extension MovieTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieTableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.movieTableViewCellIdentifier, for: indexPath) as? MovieTableViewCell else { fatalError() }
//        cell.movieName.text = "어벤져스"
//        cell.moviewDescription.text = "응"
//        cell.movieDate.text = "2019.08.29"
        return cell
    }
}

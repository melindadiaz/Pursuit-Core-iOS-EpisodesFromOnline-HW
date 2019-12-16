//
//  ViewController.swift
//  Pursuit-Core-iOS-Episodes-from-Online
//
//  Created by Benjamin Stone on 9/5/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     var tvShows = TVShow
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var showTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = segue.destination as? EpisodeViewController else { fatalError("unable to segue to EpisodeViewController" )}
        
    }
    

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
}


extension ViewController: UISearchBarDelegate {
    
}

//
//  MenuTableVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 30.01.2024.
//

import UIKit

class MenuTableVC: UITableViewController {
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        
        registerCustomCell()
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.tableView.reloadData()
        
        super.viewWillAppear(animated)
    }
    
    // MARK: - Private Methods
    
    private func registerCustomCell() {
        
        let cellNib = UINib(nibName: "TableViewCell", bundle: Bundle.main)
        
        self.tableView.register(cellNib, forCellReuseIdentifier: "TableViewCell")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return BeerManager.shared.beers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        let index = indexPath.row
        
        cell.beerNameLabel.text = "\(BeerManager.shared.beers[index].country) \(BeerManager.shared.beers[index].name)"
        
        cell.beerLeftLabel.text = "Remainder: \(BeerManager.shared.beers[index].volume) L"
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let destination = storyboard.instantiateViewController(withIdentifier: "BuyBeerVC") as? BuyBeerVC else {
            return
        }
        
        let index = indexPath.row
        
        BeerManager.shared.selectedBeerIndex = index
        
        BeerManager.shared.selectedBeer = BeerManager.shared.beers[index]
        
        self.navigationController?.pushViewController(destination, animated: true)
    }
    
}

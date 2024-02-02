//
//  MenuTableVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 30.01.2024.
//

import UIKit

class MenuTableVC: UITableViewController {
    
    // MARK: - Properties
    
    var beers: [Beer] = [
        Beer(name: "Firestone Walker Old Man Hattan", country: "🇺🇸", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "firestone-walker-old-man-hattan-icon")!, volume: 100),
        Beer(name: "CBS", country: "🇨🇦", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "cbs-icon")!, volume: 100),
        Beer(name: "Mas Agave", country: "🇨🇦", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "mas-agave-icon")!, volume: 100),
        Beer(name: "Wychwood Hobgoblin", country: "🇬🇧", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "wychwood-hobgoblin-icon")!, volume: 100),
        Beer(name: "Del Ducato Settembre", country: "🇮🇹", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "del-ducato-settembre-icon")!, volume: 100),
        Beer(name: "Oude Geuze Boon Black Label", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "oude-geuze-boon-black-label-icon")!, volume: 100),
        Beer(name: "Rodenbach Vintage", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "rodenbach-vintage-icon")!, volume: 100),
        Beer(name: "Cantillon Gueuze", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "cantillon-gueuze-icon")!, volume: 100),
        Beer(name: "Alvinne Phi", country: "🇧🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "alvinne-phi-icon")!, volume: 100),
        Beer(name: "La Trappe Oak Aged", country: "🇳🇱", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "la-trappe-oak-aged-icon")!, volume: 100),
        Beer(name: "De Molen Bommen&Granaten", country: "🇳🇱", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "de-molen-bommen&granaten-icon")!, volume: 100),
        Beer(name: "Kees & De Molen Frick&Frack", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "kees&de-molen-frick&frack-icon")!, volume: 100),
        Beer(name: "Aecht Schlenkerla Rauchbier", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "aecht-schlenkerla-rauchbier-icon")!, volume: 100),
        Beer(name: "Dunkel", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "dunkel-icon")!, volume: 100),
        Beer(name: "Rauchbier", country: "🇩🇪", type: BeerType.dark, prices: (9.99, 14.99, 24.99), image: UIImage(named: "rauchbier-icon")!, volume: 100)
    ]
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        
        registerCustomCell()
        super.viewDidLoad()
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
        
        return beers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        let index = indexPath.row
        
        cell.beerNameLabel.text = "\(self.beers[index].country) \(self.beers[index].name)"
        cell.beerLeftLabel.text = "Remainder: \(self.beers[index].volume) L"
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let destination = storyboard.instantiateViewController(withIdentifier: "BuyBeerVC") as? BuyBeerVC else {
            return
        }
        
        let index = indexPath.row
        
        destination.defaultBeerInfo.country = self.beers[index].country
        destination.defaultBeerInfo.name = self.beers[index].name
        
        self.navigationController?.pushViewController(destination, animated: true)
    }
    
}

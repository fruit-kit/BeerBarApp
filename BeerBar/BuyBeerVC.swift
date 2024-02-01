//
//  BuyBeerVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 31.01.2024.
//

import UIKit

class BuyBeerVC: UIViewController {
    
    // MARK: - Properties
    
    var defaultBeerInfo: Beer = Beer(name: "Name N/A", country: "Country N/A", type: BeerType.dark, prices: (0.0, 0.0, 0.0), image: nil, volume: 0.0)
    
    // MARK: - Outlets
    
    @IBOutlet weak var beerNameLabe: UILabel!
    
    override func viewDidLoad() {

        setupBeerNameLabel()
        super.viewDidLoad()
    }

    private func setupBeerNameLabel() {
        
        self.beerNameLabe.text = "\(self.defaultBeerInfo.country) \(self.defaultBeerInfo.name)"
        self.beerNameLabe.font = .boldSystemFont(ofSize: 25)
    }
    
}

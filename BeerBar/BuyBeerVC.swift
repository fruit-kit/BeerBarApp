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
    
    @IBOutlet weak var beerNameLabel: UILabel!
    
    @IBOutlet weak var beerTypeLabel: UILabel!
    
    @IBOutlet weak var beerLeftLabel: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {

        setupBeerNameLabel()
        setupBeerTypeLabel()
        setupBeerLeftLabel()
        super.viewDidLoad()
    }

    // MARK: - Private Methods
    
    private func setupBeerNameLabel() {
        
        self.beerNameLabel.text = "\(self.defaultBeerInfo.country) \(self.defaultBeerInfo.name)"
        self.beerNameLabel.font = .boldSystemFont(ofSize: 25)
    }
    
    private func setupBeerTypeLabel() {
        
        self.beerTypeLabel.text = "Type: \(self.defaultBeerInfo.type)"
        self.beerTypeLabel.font = .systemFont(ofSize: 18)
    }
    
    private func setupBeerLeftLabel() {
        
        self.beerLeftLabel.text = "Remainder: \(self.defaultBeerInfo.volume) L"
        self.beerLeftLabel.font = .systemFont(ofSize: 18)
    }
    
}

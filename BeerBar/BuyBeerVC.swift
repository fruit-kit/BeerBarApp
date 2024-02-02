//
//  BuyBeerVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 31.01.2024.
//

import UIKit

class BuyBeerVC: UIViewController {
    
    // MARK: - Properties
    
    var defaultBeerInfo: Beer = Beer(name: "Name N/A", country: "Country N/A", type: BeerType.dark, prices: (0.0, 0.0, 0.0), image: UIImage(named: "no-image-icon"), volume: 0.0)
    
    // MARK: - Outlets
    
    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var beerTypeLabel: UILabel!
    @IBOutlet weak var beerLeftLabel: UILabel!
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var selectBeerVolumeSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var buyBeerButton: UIButton!
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {

        setupBeerNameLabel()
        setupBeerTypeLabel()
        setupBeerLeftLabel()
        setupBeerImage()
        setupSelectBeerVolumeSegmentControl()
        setupBuyBeerButton()
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func selectBeerVolumePressed(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func buyBeerButtonPressed(_ sender: UIButton) {
        
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
    
    private func setupBeerImage() {
        
        self.beerImageView.image = self.defaultBeerInfo.image
    }
    
    private func setupSelectBeerVolumeSegmentControl() {
        
        self.selectBeerVolumeSegmentControl.setTitle("0.33 L", forSegmentAt: 0)
        self.selectBeerVolumeSegmentControl.setTitle("0.5 L", forSegmentAt: 1)
        self.selectBeerVolumeSegmentControl.setTitle("1 L", forSegmentAt: 2)
    }
    
    private func setupBuyBeerButton() {
        
        self.buyBeerButton.setTitle("Buy 🍻", for: .normal)
    }
    
}

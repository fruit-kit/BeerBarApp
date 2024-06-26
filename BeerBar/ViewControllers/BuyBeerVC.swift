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
    
    private var currentBeerVolume: Double = 0.33
    
    private var currentPriceBeerVolume: Decimal = 0.0
    
    var currentBeerIndex = 0
    
    weak var delegate: BuyBeerDelegate?
    
    // MARK: - Outlets
    
    @IBOutlet weak var beerNameLabel: UILabel!
    
    @IBOutlet weak var beerTypeLabel: UILabel!
    
    @IBOutlet weak var beerLeftLabel: UILabel!
    
    @IBOutlet weak var beerImageView: UIImageView!
    
    @IBOutlet weak var selectBeerVolumeSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var currentPriceVolumeLabel: UILabel!
    
    @IBOutlet weak var buyBeerButton: UIButton!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        
        updateDefaultBeerInfo()

        setupBeerNameLabel()
        
        setupBeerTypeLabel()
        
        setupBeerLeftLabel()
        
        setupBeerImage()
        
        setupSelectBeerVolumeSegmentControl()
        
        setupDefaultPrice()
        
        setupBuyBeerButton()
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.currentPriceBeerVolume = self.defaultBeerInfo.prices.0
        
        chekBeerVolume()
        
        super.viewWillAppear(animated)
    }
    
    // MARK: - Actions
    
    @IBAction func selectBeerVolumePressed(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.currentPriceVolumeLabel.text = "Price: $\(self.defaultBeerInfo.prices.0)"
            
            self.currentBeerVolume = 0.33
            
            self.currentPriceBeerVolume = self.defaultBeerInfo.prices.0
        case 1:
            self.currentPriceVolumeLabel.text = "Price: $\(self.defaultBeerInfo.prices.1)"
            
            self.currentBeerVolume = 0.5
            
            self.currentPriceBeerVolume = self.defaultBeerInfo.prices.1
        case 2:
            self.currentPriceVolumeLabel.text = "Price: $\(self.defaultBeerInfo.prices.2)"
            
            self.currentBeerVolume = 1
            
            self.currentPriceBeerVolume = self.defaultBeerInfo.prices.2
        default:
            break
        }
        
        chekBeerVolume()
    }
    
    @IBAction func buyBeerButtonPressed(_ sender: UIButton) {
        
        BeerManager.shared.todayRevenue += self.currentPriceBeerVolume
        
        self.defaultBeerInfo.volume -= self.currentBeerVolume
        
        BeerManager.shared.beers[currentBeerIndex].volume -= self.currentBeerVolume
        
        self.beerLeftLabel.text = "Remainder: \(self.defaultBeerInfo.volume) L"
        
        self.delegate?.updateTableView()
        
        chekBeerVolume()
    }
    
    // MARK: - Private Methods
    
    private func updateDefaultBeerInfo() {
        
        if let selectedBeer = BeerManager.shared.selectedBeer,
           let selectedBeerIndex = BeerManager.shared.selectedBeerIndex {
            
            self.defaultBeerInfo = selectedBeer
            
            self.currentBeerIndex = selectedBeerIndex
        }
    }
    
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
    
    private func setupDefaultPrice() {
        
        self.currentPriceVolumeLabel.text = "Price: $\(self.defaultBeerInfo.prices.0)"
    }
    
    private func setupBuyBeerButton() {
        
        self.buyBeerButton.setTitle("Buy 🍻", for: .normal)
    }
    
    private func chekBeerVolume() {
        
        self.buyBeerButton.isEnabled = self.currentBeerVolume <= self.defaultBeerInfo.volume
    }
    
}

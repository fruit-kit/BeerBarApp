//
//  DeveloperInfoVC.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 27.01.2024.
//

import UIKit

class DeveloperInfoVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var developerImageView: UIImageView!
    
    @IBOutlet weak var developerNameLabel: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        
        setupDeveloperImageView()
        setupDeveloperNameLabel()
        super.viewDidLoad()
    }
    
    // MARK: - Private Methods
    
    private func setupDeveloperImageView() {
        
        let developerImage = UIImage(named: "developer-icon")
        self.developerImageView.image = developerImage
        self.developerImageView.layer.cornerRadius = self.developerImageView.bounds.width / 2
        self.developerImageView.layer.borderWidth = 2
        self.developerImageView.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    private func setupDeveloperNameLabel() {
        
        self.developerNameLabel.text = "Robert Kotrutsa"
        self.developerNameLabel.font = .boldSystemFont(ofSize: 25)
    }
    
}

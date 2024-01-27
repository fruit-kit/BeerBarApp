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
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDeveloperImageView()
    }
    
    // MARK: - Private Methods
    
    private func setupDeveloperImageView() {
        
        let developerImage = UIImage(named: "developer-icon")
        self.developerImageView.image = developerImage
        self.developerImageView.layer.cornerRadius = self.developerImageView.bounds.width / 2
        self.developerImageView.layer.borderWidth = 2
        self.developerImageView.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
}
